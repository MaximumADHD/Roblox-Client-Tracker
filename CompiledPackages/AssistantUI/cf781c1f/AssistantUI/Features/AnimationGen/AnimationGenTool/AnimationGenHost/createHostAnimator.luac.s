PROTO_0:
        0 LOADK                            R3 K0 ["Animator"]
        1 NAMECALL                         R1 R0 K1 ["FindFirstChildOfClass"]
        3 CALL                             R1 2 1
        4 JUMPIFEQKNIL                     R1 ; [+4]
        6 NAMECALL                         R2 R1 K2 ["Destroy"]
        8 CALL                             R2 1 0
        9 GETIMPORT                        R2 K5 [Instance.new]
       11 LOADK                            R3 K0 ["Animator"]
       12 CALL                             R2 1 1
       13 SETTABLEKS                       R0 R2 K6 ["Parent"]
       15 RETURN                           R2 1

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["renderSteppedConnection"]
        2 JUMPIFEQKNIL                     R1 ; [+9]
        4 GETTABLEKS                       R1 R0 K0 ["renderSteppedConnection"]
        6 NAMECALL                         R1 R1 K1 ["Disconnect"]
        8 CALL                             R1 1 0
        9 LOADNIL                          R1
       10 SETTABLEKS                       R1 R0 K0 ["renderSteppedConnection"]
       12 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["renderSteppedConnection"]
        2 JUMPIFEQKNIL                     R1 ; [+9]
        4 GETTABLEKS                       R1 R0 K0 ["renderSteppedConnection"]
        6 NAMECALL                         R1 R1 K1 ["Disconnect"]
        8 CALL                             R1 1 0
        9 LOADNIL                          R1
       10 SETTABLEKS                       R1 R0 K0 ["renderSteppedConnection"]
       12 LOADB                            R1 0
       13 SETTABLEKS                       R1 R0 K2 ["isPlaying"]
       15 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["loadedAnimation"]
        2 JUMPIFNOTEQKNIL                  R1 ; [+2]
        4 RETURN                           R0 0
        5 GETTABLEKS                       R1 R0 K0 ["loadedAnimation"]
        7 GETTABLEKS                       R1 R1 K1 ["ancestryChangedConnection"]
        9 NAMECALL                         R1 R1 K2 ["Disconnect"]
       11 CALL                             R1 1 0
       12 GETUPVAL                         R1 0
       13 GETTABLEKS                       R2 R0 K0 ["loadedAnimation"]
       15 GETTABLEKS                       R2 R2 K3 ["animator"]
       17 CALL                             R1 1 0
       18 LOADNIL                          R1
       19 SETTABLEKS                       R1 R0 K0 ["loadedAnimation"]
       21 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["loadedAnimation"]
        2 JUMPIFNOTEQKNIL                  R1 ; [+2]
        4 JUMP                             ; [+16]
        5 GETTABLEKS                       R1 R0 K0 ["loadedAnimation"]
        7 GETTABLEKS                       R1 R1 K1 ["ancestryChangedConnection"]
        9 NAMECALL                         R1 R1 K2 ["Disconnect"]
       11 CALL                             R1 1 0
       12 GETUPVAL                         R1 0
       13 GETTABLEKS                       R2 R0 K0 ["loadedAnimation"]
       15 GETTABLEKS                       R2 R2 K3 ["animator"]
       17 CALL                             R1 1 0
       18 LOADNIL                          R1
       19 SETTABLEKS                       R1 R0 K0 ["loadedAnimation"]
       21 GETTABLEKS                       R1 R0 K4 ["renderSteppedConnection"]
       23 JUMPIFEQKNIL                     R1 ; [+9]
       25 GETTABLEKS                       R1 R0 K4 ["renderSteppedConnection"]
       27 NAMECALL                         R1 R1 K2 ["Disconnect"]
       29 CALL                             R1 1 0
       30 LOADNIL                          R1
       31 SETTABLEKS                       R1 R0 K4 ["renderSteppedConnection"]
       33 LOADB                            R1 0
       34 SETTABLEKS                       R1 R0 K5 ["isPlaying"]
       36 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R3 1
        2 GETIMPORT                        R6 K2 [os.clock]
        4 CALL                             R6 0 1
        5 GETUPVAL                         R7 2
        6 SUB                              R5 R6 R7
        7 GETUPVAL                         R6 0
        8 GETTABLEKS                       R6 R6 K3 ["playbackSpeed"]
       10 MUL                              R4 R5 R6
       11 ADD                              R2 R3 R4
       12 GETUPVAL                         R3 3
       13 MOD                              R1 R2 R3
       14 SETTABLEKS                       R1 R0 K4 ["currentTime"]
       16 GETUPVAL                         R0 0
       17 GETTABLEKS                       R0 R0 K5 ["loadedAnimation"]
       19 JUMPIFEQKNIL                     R0 ; [+25]
       21 GETUPVAL                         R0 0
       22 GETTABLEKS                       R0 R0 K5 ["loadedAnimation"]
       24 GETTABLEKS                       R0 R0 K6 ["animationTrack"]
       26 GETUPVAL                         R1 0
       27 GETTABLEKS                       R1 R1 K4 ["currentTime"]
       29 SETTABLEKS                       R1 R0 K7 ["TimePosition"]
       31 GETUPVAL                         R0 4
       32 NAMECALL                         R0 R0 K8 ["IsRunning"]
       34 CALL                             R0 1 1
       35 JUMPIF                           R0 ; [+9]
       36 GETUPVAL                         R0 0
       37 GETTABLEKS                       R0 R0 K5 ["loadedAnimation"]
       39 GETTABLEKS                       R0 R0 K9 ["animator"]
       41 LOADN                            R2 0
       42 NAMECALL                         R0 R0 K10 ["StepAnimations"]
       44 CALL                             R0 2 0
       45 RETURN                           R0 0

PROTO_6:
        0 GETTABLEKS                       R1 R0 K0 ["renderSteppedConnection"]
        2 JUMPIFEQKNIL                     R1 ; [+9]
        4 GETTABLEKS                       R1 R0 K0 ["renderSteppedConnection"]
        6 NAMECALL                         R1 R1 K1 ["Disconnect"]
        8 CALL                             R1 1 0
        9 LOADNIL                          R1
       10 SETTABLEKS                       R1 R0 K0 ["renderSteppedConnection"]
       12 GETTABLEKS                       R1 R0 K2 ["keyframeSequence"]
       14 JUMPIFEQKNIL                     R1 ; [+7]
       16 GETTABLEKS                       R1 R0 K2 ["keyframeSequence"]
       18 GETTABLEKS                       R1 R1 K3 ["Length"]
       20 JUMPIFNOTEQKN                    R1 K4 [0] ; [+2]
       22 RETURN                           R0 0
       23 LOADB                            R1 1
       24 SETTABLEKS                       R1 R0 K5 ["isPlaying"]
       26 GETTABLEKS                       R1 R0 K6 ["currentTime"]
       28 GETIMPORT                        R2 K9 [os.clock]
       30 CALL                             R2 0 1
       31 GETTABLEKS                       R3 R0 K2 ["keyframeSequence"]
       33 GETTABLEKS                       R3 R3 K3 ["Length"]
       35 NEWCLOSURE                       R4 P0
       36 CAPTURE                          VAL R0
       37 CAPTURE                          VAL R1
       38 CAPTURE                          VAL R2
       39 CAPTURE                          VAL R3
       40 CAPTURE                          UPVAL U0
       41 GETUPVAL                         R5 0
       42 GETTABLEKS                       R5 R5 K10 ["RenderStepped"]
       44 MOVE                             R7 R4
       45 NAMECALL                         R5 R5 K11 ["Connect"]
       47 CALL                             R5 2 1
       48 SETTABLEKS                       R5 R0 K0 ["renderSteppedConnection"]
       50 MOVE                             R5 R4
       51 CALL                             R5 0 0
       52 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["LoadAnimation"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["rig"]
        3 JUMPIFEQKNIL                     R0 ; [+9]
        5 GETUPVAL                         R0 1
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R2 R2 K0 ["rig"]
        9 NAMECALL                         R0 R0 K1 ["IsDescendantOf"]
       11 CALL                             R0 2 1
       12 JUMPIF                           R0 ; [+32]
       13 GETUPVAL                         R0 0
       14 LOADB                            R1 1
       15 SETTABLEKS                       R1 R0 K2 ["needsReload"]
       17 GETUPVAL                         R0 0
       18 GETTABLEKS                       R1 R0 K3 ["loadedAnimation"]
       20 JUMPIFNOTEQKNIL                  R1 ; [+2]
       22 JUMP                             ; [+16]
       23 GETTABLEKS                       R1 R0 K3 ["loadedAnimation"]
       25 GETTABLEKS                       R1 R1 K4 ["ancestryChangedConnection"]
       27 NAMECALL                         R1 R1 K5 ["Disconnect"]
       29 CALL                             R1 1 0
       30 GETUPVAL                         R1 2
       31 GETTABLEKS                       R2 R0 K3 ["loadedAnimation"]
       33 GETTABLEKS                       R2 R2 K6 ["animator"]
       35 CALL                             R1 1 0
       36 LOADNIL                          R1
       37 SETTABLEKS                       R1 R0 K3 ["loadedAnimation"]
       39 GETUPVAL                         R0 3
       40 GETTABLEKS                       R0 R0 K7 ["bridge"]
       42 GETTABLEKS                       R0 R0 K8 ["animatorRemoved"]
       44 CALL                             R0 0 0
       45 RETURN                           R0 0

PROTO_9:
        0 JUMPIFEQKNIL                     R1 ; [+3]
        2 JUMPIFNOTEQKNIL                  R2 ; [+2]
        4 RETURN                           R0 0
        5 LOADK                            R6 K0 ["Humanoid"]
        6 NAMECALL                         R4 R1 K1 ["FindFirstChildOfClass"]
        8 CALL                             R4 2 1
        9 LOADK                            R7 K2 ["AnimationController"]
       10 NAMECALL                         R5 R1 K1 ["FindFirstChildOfClass"]
       12 CALL                             R5 2 1
       13 OR                               R6 R4 R5
       14 JUMPIFNOTEQKNIL                  R6 ; [+2]
       16 RETURN                           R0 0
       17 GETTABLEKS                       R7 R0 K3 ["loadedAnimation"]
       19 JUMPIFNOTEQKNIL                  R7 ; [+2]
       21 JUMP                             ; [+16]
       22 GETTABLEKS                       R7 R0 K3 ["loadedAnimation"]
       24 GETTABLEKS                       R7 R7 K4 ["ancestryChangedConnection"]
       26 NAMECALL                         R7 R7 K5 ["Disconnect"]
       28 CALL                             R7 1 0
       29 GETUPVAL                         R7 0
       30 GETTABLEKS                       R8 R0 K3 ["loadedAnimation"]
       32 GETTABLEKS                       R8 R8 K6 ["animator"]
       34 CALL                             R7 1 0
       35 LOADNIL                          R7
       36 SETTABLEKS                       R7 R0 K3 ["loadedAnimation"]
       38 LOADK                            R10 K7 ["Animator"]
       39 NAMECALL                         R8 R6 K1 ["FindFirstChildOfClass"]
       41 CALL                             R8 2 1
       42 JUMPIFEQKNIL                     R8 ; [+4]
       44 NAMECALL                         R9 R8 K8 ["Destroy"]
       46 CALL                             R9 1 0
       47 GETIMPORT                        R9 K11 [Instance.new]
       49 LOADK                            R10 K7 ["Animator"]
       50 CALL                             R9 1 1
       51 SETTABLEKS                       R6 R9 K12 ["Parent"]
       53 MOVE                             R7 R9
       54 GETIMPORT                        R8 K11 [Instance.new]
       56 LOADK                            R9 K13 ["Animation"]
       57 CALL                             R8 1 1
       58 GETUPVAL                         R9 1
       59 MOVE                             R11 R2
       60 NAMECALL                         R9 R9 K14 ["RegisterKeyframeSequence"]
       62 CALL                             R9 2 1
       63 SETTABLEKS                       R9 R8 K15 ["AnimationId"]
       65 GETIMPORT                        R9 K17 [pcall]
       67 NEWCLOSURE                       R10 P0
       68 CAPTURE                          VAL R7
       69 CAPTURE                          VAL R8
       70 CALL                             R9 1 2
       71 JUMPIF                           R9 ; [+4]
       72 GETIMPORT                        R11 K19 [error]
       74 MOVE                             R12 R10
       75 CALL                             R11 1 0
       76 GETIMPORT                        R11 K23 [Enum.AnimationPriority.Action4]
       78 SETTABLEKS                       R11 R10 K24 ["Priority"]
       80 LOADB                            R11 1
       81 SETTABLEKS                       R11 R10 K25 ["Looped"]
       83 LOADN                            R13 0
       84 LOADN                            R14 1
       85 LOADN                            R15 0
       86 NAMECALL                         R11 R10 K26 ["Play"]
       88 CALL                             R11 4 0
       89 LOADNIL                          R11
       90 GETTABLEKS                       R12 R7 K27 ["AncestryChanged"]
       92 NEWCLOSURE                       R14 P1
       93 CAPTURE                          VAL R0
       94 CAPTURE                          VAL R7
       95 CAPTURE                          UPVAL U0
       96 CAPTURE                          VAL R3
       97 NAMECALL                         R12 R12 K28 ["Connect"]
       99 CALL                             R12 2 1
      100 MOVE                             R11 R12
      101 DUPTABLE                         R12 K30 [{"animationTrack", "animator", "ancestryChangedConnection"}]
      102 SETTABLEKS                       R10 R12 K29 ["animationTrack"]
      104 SETTABLEKS                       R7 R12 K6 ["animator"]
      106 SETTABLEKS                       R11 R12 K4 ["ancestryChangedConnection"]
      108 SETTABLEKS                       R12 R0 K3 ["loadedAnimation"]
      110 LOADB                            R12 0
      111 SETTABLEKS                       R12 R0 K31 ["needsReload"]
      113 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 JUMPIFNOTEQKNIL                  R1 ; [+2]
        4 LOADB                            R3 0 +1
        5 LOADB                            R3 1
        6 FASTCALL2K                       ASSERT R3 K0 ; [+4]
        8 LOADK                            R4 K0 ["No playback state found"]
        9 GETIMPORT                        R2 K2 [assert]
       11 CALL                             R2 2 0
       12 RETURN                           R1 1

PROTO_11:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 JUMPIFEQKNIL                     R1 ; [+37]
        4 GETTABLEKS                       R2 R1 K0 ["loadedAnimation"]
        6 JUMPIFNOTEQKNIL                  R2 ; [+2]
        8 JUMP                             ; [+16]
        9 GETTABLEKS                       R2 R1 K0 ["loadedAnimation"]
       11 GETTABLEKS                       R2 R2 K1 ["ancestryChangedConnection"]
       13 NAMECALL                         R2 R2 K2 ["Disconnect"]
       15 CALL                             R2 1 0
       16 GETUPVAL                         R2 1
       17 GETTABLEKS                       R3 R1 K0 ["loadedAnimation"]
       19 GETTABLEKS                       R3 R3 K3 ["animator"]
       21 CALL                             R2 1 0
       22 LOADNIL                          R2
       23 SETTABLEKS                       R2 R1 K0 ["loadedAnimation"]
       25 GETTABLEKS                       R2 R1 K4 ["renderSteppedConnection"]
       27 JUMPIFEQKNIL                     R2 ; [+9]
       29 GETTABLEKS                       R2 R1 K4 ["renderSteppedConnection"]
       31 NAMECALL                         R2 R2 K2 ["Disconnect"]
       33 CALL                             R2 1 0
       34 LOADNIL                          R2
       35 SETTABLEKS                       R2 R1 K4 ["renderSteppedConnection"]
       37 LOADB                            R2 0
       38 SETTABLEKS                       R2 R1 K5 ["isPlaying"]
       40 GETUPVAL                         R2 0
       41 DUPTABLE                         R3 K11 [{"isPlaying", "currentTime", "playbackSpeed", "needsReload", "loadedAnimation", "keyframeSequence", "rig", "renderSteppedConnection"}]
       42 LOADB                            R4 0
       43 SETTABLEKS                       R4 R3 K5 ["isPlaying"]
       45 LOADN                            R4 0
       46 SETTABLEKS                       R4 R3 K6 ["currentTime"]
       48 LOADN                            R4 1
       49 SETTABLEKS                       R4 R3 K7 ["playbackSpeed"]
       51 LOADB                            R4 0
       52 SETTABLEKS                       R4 R3 K8 ["needsReload"]
       54 LOADNIL                          R4
       55 SETTABLEKS                       R4 R3 K0 ["loadedAnimation"]
       57 LOADNIL                          R4
       58 SETTABLEKS                       R4 R3 K9 ["keyframeSequence"]
       60 LOADNIL                          R4
       61 SETTABLEKS                       R4 R3 K10 ["rig"]
       63 LOADNIL                          R4
       64 SETTABLEKS                       R4 R3 K4 ["renderSteppedConnection"]
       66 SETTABLE                         R3 R2 R0
       67 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 JUMPIFNOT                        R1 ; [+5]
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K0 ["rig"]
        7 JUMPIFNOTEQ                      R0 R1 ; [+2]
        9 RETURN                           R0 0
       10 GETUPVAL                         R1 1
       11 GETTABLEKS                       R2 R1 K1 ["loadedAnimation"]
       13 JUMPIFNOTEQKNIL                  R2 ; [+2]
       15 JUMP                             ; [+16]
       16 GETTABLEKS                       R2 R1 K1 ["loadedAnimation"]
       18 GETTABLEKS                       R2 R2 K2 ["ancestryChangedConnection"]
       20 NAMECALL                         R2 R2 K3 ["Disconnect"]
       22 CALL                             R2 1 0
       23 GETUPVAL                         R2 2
       24 GETTABLEKS                       R3 R1 K1 ["loadedAnimation"]
       26 GETTABLEKS                       R3 R3 K4 ["animator"]
       28 CALL                             R2 1 0
       29 LOADNIL                          R2
       30 SETTABLEKS                       R2 R1 K1 ["loadedAnimation"]
       32 GETUPVAL                         R1 1
       33 GETTABLEKS                       R2 R1 K5 ["renderSteppedConnection"]
       35 JUMPIFEQKNIL                     R2 ; [+9]
       37 GETTABLEKS                       R2 R1 K5 ["renderSteppedConnection"]
       39 NAMECALL                         R2 R2 K3 ["Disconnect"]
       41 CALL                             R2 1 0
       42 LOADNIL                          R2
       43 SETTABLEKS                       R2 R1 K5 ["renderSteppedConnection"]
       45 LOADB                            R2 0
       46 SETTABLEKS                       R2 R1 K6 ["isPlaying"]
       48 GETUPVAL                         R1 1
       49 SETTABLEKS                       R0 R1 K0 ["rig"]
       51 GETUPVAL                         R1 1
       52 LOADB                            R2 1
       53 SETTABLEKS                       R2 R1 K7 ["needsReload"]
       55 GETUPVAL                         R1 3
       56 GETTABLEKS                       R1 R1 K8 ["bridge"]
       58 GETTABLEKS                       R1 R1 K9 ["rigSelected"]
       60 CALL                             R1 0 0
       61 RETURN                           R0 0

PROTO_13:
        0 GETTABLEKS                       R3 R2 K0 ["handlerArgs"]
        2 GETTABLEKS                       R3 R3 K1 ["contentId"]
        4 GETUPVAL                         R5 0
        5 GETTABLE                         R4 R5 R3
        6 JUMPIFEQKNIL                     R4 ; [+37]
        8 GETTABLEKS                       R5 R4 K2 ["loadedAnimation"]
       10 JUMPIFNOTEQKNIL                  R5 ; [+2]
       12 JUMP                             ; [+16]
       13 GETTABLEKS                       R5 R4 K2 ["loadedAnimation"]
       15 GETTABLEKS                       R5 R5 K3 ["ancestryChangedConnection"]
       17 NAMECALL                         R5 R5 K4 ["Disconnect"]
       19 CALL                             R5 1 0
       20 GETUPVAL                         R5 1
       21 GETTABLEKS                       R6 R4 K2 ["loadedAnimation"]
       23 GETTABLEKS                       R6 R6 K5 ["animator"]
       25 CALL                             R5 1 0
       26 LOADNIL                          R5
       27 SETTABLEKS                       R5 R4 K2 ["loadedAnimation"]
       29 GETTABLEKS                       R5 R4 K6 ["renderSteppedConnection"]
       31 JUMPIFEQKNIL                     R5 ; [+9]
       33 GETTABLEKS                       R5 R4 K6 ["renderSteppedConnection"]
       35 NAMECALL                         R5 R5 K4 ["Disconnect"]
       37 CALL                             R5 1 0
       38 LOADNIL                          R5
       39 SETTABLEKS                       R5 R4 K6 ["renderSteppedConnection"]
       41 LOADB                            R5 0
       42 SETTABLEKS                       R5 R4 K7 ["isPlaying"]
       44 GETUPVAL                         R5 0
       45 DUPTABLE                         R6 K13 [{"isPlaying", "currentTime", "playbackSpeed", "needsReload", "loadedAnimation", "keyframeSequence", "rig", "renderSteppedConnection"}]
       46 LOADB                            R7 0
       47 SETTABLEKS                       R7 R6 K7 ["isPlaying"]
       49 LOADN                            R7 0
       50 SETTABLEKS                       R7 R6 K8 ["currentTime"]
       52 LOADN                            R7 1
       53 SETTABLEKS                       R7 R6 K9 ["playbackSpeed"]
       55 LOADB                            R7 0
       56 SETTABLEKS                       R7 R6 K10 ["needsReload"]
       58 LOADNIL                          R7
       59 SETTABLEKS                       R7 R6 K2 ["loadedAnimation"]
       61 LOADNIL                          R7
       62 SETTABLEKS                       R7 R6 K11 ["keyframeSequence"]
       64 LOADNIL                          R7
       65 SETTABLEKS                       R7 R6 K12 ["rig"]
       67 LOADNIL                          R7
       68 SETTABLEKS                       R7 R6 K6 ["renderSteppedConnection"]
       70 SETTABLE                         R6 R5 R3
       71 GETUPVAL                         R5 0
       72 GETTABLE                         R4 R5 R3
       73 SETTABLEKS                       R1 R4 K12 ["rig"]
       75 SETTABLEKS                       R0 R4 K11 ["keyframeSequence"]
       77 LOADB                            R5 1
       78 SETTABLEKS                       R5 R4 K10 ["needsReload"]
       80 GETUPVAL                         R5 2
       81 JUMPIFEQKNIL                     R5 ; [+5]
       83 GETUPVAL                         R5 2
       84 NAMECALL                         R5 R5 K4 ["Disconnect"]
       86 CALL                             R5 1 0
       87 GETUPVAL                         R5 3
       88 NEWCLOSURE                       R7 P0
       89 CAPTURE                          UPVAL U4
       90 CAPTURE                          VAL R4
       91 CAPTURE                          UPVAL U1
       92 CAPTURE                          VAL R2
       93 NAMECALL                         R5 R5 K14 ["Connect"]
       95 CALL                             R5 2 1
       96 SETUPVAL                         R5 2
       97 RETURN                           R0 0

PROTO_14:
        0 GETTABLEKS                       R3 R1 K0 ["handlerArgs"]
        2 GETTABLEKS                       R3 R3 K1 ["contentId"]
        4 GETUPVAL                         R5 0
        5 GETTABLE                         R4 R5 R3
        6 JUMPIFNOTEQKNIL                  R4 ; [+2]
        8 LOADB                            R6 0 +1
        9 LOADB                            R6 1
       10 FASTCALL2K                       ASSERT R6 K2 ; [+4]
       12 LOADK                            R7 K2 ["No playback state found"]
       13 GETIMPORT                        R5 K4 [assert]
       15 CALL                             R5 2 0
       16 MOVE                             R2 R4
       17 JUMPIFNOT                        R0 ; [+15]
       18 GETTABLEKS                       R3 R2 K5 ["needsReload"]
       20 JUMPIFNOT                        R3 ; [+8]
       21 GETUPVAL                         R3 1
       22 MOVE                             R4 R2
       23 GETTABLEKS                       R5 R2 K6 ["rig"]
       25 GETTABLEKS                       R6 R2 K7 ["keyframeSequence"]
       27 MOVE                             R7 R1
       28 CALL                             R3 4 0
       29 GETUPVAL                         R3 2
       30 MOVE                             R4 R2
       31 CALL                             R3 1 0
       32 RETURN                           R0 0
       33 GETTABLEKS                       R3 R2 K8 ["renderSteppedConnection"]
       35 JUMPIFEQKNIL                     R3 ; [+9]
       37 GETTABLEKS                       R3 R2 K8 ["renderSteppedConnection"]
       39 NAMECALL                         R3 R3 K9 ["Disconnect"]
       41 CALL                             R3 1 0
       42 LOADNIL                          R3
       43 SETTABLEKS                       R3 R2 K8 ["renderSteppedConnection"]
       45 LOADB                            R3 0
       46 SETTABLEKS                       R3 R2 K10 ["isPlaying"]
       48 RETURN                           R0 0

PROTO_15:
        0 GETTABLEKS                       R3 R1 K0 ["handlerArgs"]
        2 GETTABLEKS                       R3 R3 K1 ["contentId"]
        4 GETUPVAL                         R5 0
        5 GETTABLE                         R4 R5 R3
        6 JUMPIFNOTEQKNIL                  R4 ; [+2]
        8 LOADB                            R6 0 +1
        9 LOADB                            R6 1
       10 FASTCALL2K                       ASSERT R6 K2 ; [+4]
       12 LOADK                            R7 K2 ["No playback state found"]
       13 GETIMPORT                        R5 K4 [assert]
       15 CALL                             R5 2 0
       16 MOVE                             R2 R4
       17 SETTABLEKS                       R0 R2 K5 ["currentTime"]
       19 GETTABLEKS                       R3 R2 K6 ["needsReload"]
       21 JUMPIFNOT                        R3 ; [+8]
       22 GETUPVAL                         R3 1
       23 MOVE                             R4 R2
       24 GETTABLEKS                       R5 R2 K7 ["rig"]
       26 GETTABLEKS                       R6 R2 K8 ["keyframeSequence"]
       28 MOVE                             R7 R1
       29 CALL                             R3 4 0
       30 GETTABLEKS                       R3 R2 K9 ["loadedAnimation"]
       32 JUMPIFEQKNIL                     R3 ; [+20]
       34 GETTABLEKS                       R3 R2 K9 ["loadedAnimation"]
       36 GETTABLEKS                       R3 R3 K10 ["animationTrack"]
       38 SETTABLEKS                       R0 R3 K11 ["TimePosition"]
       40 GETUPVAL                         R3 2
       41 NAMECALL                         R3 R3 K12 ["IsRunning"]
       43 CALL                             R3 1 1
       44 JUMPIF                           R3 ; [+8]
       45 GETTABLEKS                       R3 R2 K9 ["loadedAnimation"]
       47 GETTABLEKS                       R3 R3 K13 ["animator"]
       49 LOADN                            R5 0
       50 NAMECALL                         R3 R3 K14 ["StepAnimations"]
       52 CALL                             R3 2 0
       53 GETTABLEKS                       R3 R2 K15 ["isPlaying"]
       55 JUMPIFNOT                        R3 ; [+3]
       56 GETUPVAL                         R3 3
       57 MOVE                             R4 R2
       58 CALL                             R3 1 0
       59 RETURN                           R0 0

PROTO_16:
        0 GETTABLEKS                       R3 R1 K0 ["handlerArgs"]
        2 GETTABLEKS                       R3 R3 K1 ["contentId"]
        4 GETUPVAL                         R5 0
        5 GETTABLE                         R4 R5 R3
        6 JUMPIFNOTEQKNIL                  R4 ; [+2]
        8 LOADB                            R6 0 +1
        9 LOADB                            R6 1
       10 FASTCALL2K                       ASSERT R6 K2 ; [+4]
       12 LOADK                            R7 K2 ["No playback state found"]
       13 GETIMPORT                        R5 K4 [assert]
       15 CALL                             R5 2 0
       16 MOVE                             R2 R4
       17 SETTABLEKS                       R0 R2 K5 ["playbackSpeed"]
       19 GETTABLEKS                       R3 R2 K6 ["isPlaying"]
       21 JUMPIFNOT                        R3 ; [+3]
       22 GETUPVAL                         R3 1
       23 MOVE                             R4 R2
       24 CALL                             R3 1 0
       25 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R0 0
        1 JUMPIFEQKNIL                     R0 ; [+7]
        3 GETUPVAL                         R0 0
        4 NAMECALL                         R0 R0 K0 ["Disconnect"]
        6 CALL                             R0 1 0
        7 LOADNIL                          R0
        8 SETUPVAL                         R0 0
        9 GETUPVAL                         R0 1
       10 LOADNIL                          R1
       11 LOADNIL                          R2
       12 FORGPREP                         R0
       13 GETTABLEKS                       R5 R4 K1 ["loadedAnimation"]
       15 JUMPIFNOTEQKNIL                  R5 ; [+2]
       17 JUMP                             ; [+16]
       18 GETTABLEKS                       R5 R4 K1 ["loadedAnimation"]
       20 GETTABLEKS                       R5 R5 K2 ["ancestryChangedConnection"]
       22 NAMECALL                         R5 R5 K0 ["Disconnect"]
       24 CALL                             R5 1 0
       25 GETUPVAL                         R5 2
       26 GETTABLEKS                       R6 R4 K1 ["loadedAnimation"]
       28 GETTABLEKS                       R6 R6 K3 ["animator"]
       30 CALL                             R5 1 0
       31 LOADNIL                          R5
       32 SETTABLEKS                       R5 R4 K1 ["loadedAnimation"]
       34 GETTABLEKS                       R5 R4 K4 ["renderSteppedConnection"]
       36 JUMPIFEQKNIL                     R5 ; [+9]
       38 GETTABLEKS                       R5 R4 K4 ["renderSteppedConnection"]
       40 NAMECALL                         R5 R5 K0 ["Disconnect"]
       42 CALL                             R5 1 0
       43 LOADNIL                          R5
       44 SETTABLEKS                       R5 R4 K4 ["renderSteppedConnection"]
       46 LOADB                            R5 0
       47 SETTABLEKS                       R5 R4 K5 ["isPlaying"]
       49 FORGLOOP                         R0 2 ; [-37]
       51 GETIMPORT                        R0 K8 [table.clear]
       53 GETUPVAL                         R1 1
       54 CALL                             R0 1 0
       55 RETURN                           R0 0

PROTO_18:
        0 NEWTABLE                         R1 0 0
        2 LOADNIL                          R2
        3 NEWCLOSURE                       R3 P0
        4 CAPTURE                          VAL R1
        5 NEWCLOSURE                       R4 P1
        6 CAPTURE                          VAL R1
        7 CAPTURE                          UPVAL U0
        8 NEWCLOSURE                       R5 P2
        9 CAPTURE                          VAL R1
       10 CAPTURE                          UPVAL U0
       11 CAPTURE                          REF R2
       12 CAPTURE                          VAL R0
       13 CAPTURE                          UPVAL U1
       14 NEWCLOSURE                       R6 P3
       15 CAPTURE                          VAL R1
       16 CAPTURE                          UPVAL U2
       17 CAPTURE                          UPVAL U3
       18 NEWCLOSURE                       R7 P4
       19 CAPTURE                          VAL R1
       20 CAPTURE                          UPVAL U2
       21 CAPTURE                          UPVAL U4
       22 CAPTURE                          UPVAL U3
       23 NEWCLOSURE                       R8 P5
       24 CAPTURE                          VAL R1
       25 CAPTURE                          UPVAL U3
       26 NEWCLOSURE                       R9 P6
       27 CAPTURE                          REF R2
       28 CAPTURE                          VAL R1
       29 CAPTURE                          UPVAL U0
       30 DUPTABLE                         R10 K5 [{"setAnimation", "setIsPlaying", "setCurrentTime", "setPlaybackSpeed", "destroy"}]
       31 SETTABLEKS                       R5 R10 K0 ["setAnimation"]
       33 SETTABLEKS                       R6 R10 K1 ["setIsPlaying"]
       35 SETTABLEKS                       R7 R10 K2 ["setCurrentTime"]
       37 SETTABLEKS                       R8 R10 K3 ["setPlaybackSpeed"]
       39 SETTABLEKS                       R9 R10 K4 ["destroy"]
       41 CLOSEUPVALS                      R2
       42 RETURN                           R10 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["KeyframeSequenceProvider"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K1 [game]
        9 LOADK                            R3 K4 ["RunService"]
       10 NAMECALL                         R1 R1 K3 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K6 [script]
       15 LOADK                            R4 K7 ["AssistantUI"]
       16 NAMECALL                         R2 R2 K8 ["FindFirstAncestor"]
       18 CALL                             R2 2 1
       19 GETIMPORT                        R3 K6 [script]
       21 LOADK                            R5 K9 ["AnimationGen"]
       22 NAMECALL                         R3 R3 K8 ["FindFirstAncestor"]
       24 CALL                             R3 2 1
       25 GETIMPORT                        R4 K11 [require]
       27 GETTABLEKS                       R5 R3 K12 ["AnimationGenTool"]
       29 GETTABLEKS                       R5 R5 K13 ["AnimationGenBridgeTypes"]
       31 CALL                             R4 1 1
       32 GETIMPORT                        R5 K11 [require]
       34 GETTABLEKS                       R6 R2 K14 ["Types"]
       36 CALL                             R5 1 1
       37 GETIMPORT                        R6 K11 [require]
       39 GETTABLEKS                       R7 R3 K12 ["AnimationGenTool"]
       41 GETTABLEKS                       R7 R7 K15 ["Util"]
       43 GETTABLEKS                       R7 R7 K16 ["clearAnimationPose"]
       45 CALL                             R6 1 1
       46 GETIMPORT                        R7 K11 [require]
       48 GETTABLEKS                       R8 R3 K12 ["AnimationGenTool"]
       50 GETTABLEKS                       R8 R8 K15 ["Util"]
       52 GETTABLEKS                       R8 R8 K17 ["isRig"]
       54 CALL                             R7 1 1
       55 DUPCLOSURE                       R8 K18 [PROTO_0]
       56 DUPCLOSURE                       R9 K19 [PROTO_1]
       57 DUPCLOSURE                       R10 K20 [PROTO_2]
       58 DUPCLOSURE                       R11 K21 [PROTO_3]
       59 CAPTURE                          VAL R6
       60 DUPCLOSURE                       R12 K22 [PROTO_4]
       61 CAPTURE                          VAL R6
       62 DUPCLOSURE                       R13 K23 [PROTO_6]
       63 CAPTURE                          VAL R1
       64 DUPCLOSURE                       R14 K24 [PROTO_9]
       65 CAPTURE                          VAL R6
       66 CAPTURE                          VAL R0
       67 DUPCLOSURE                       R15 K25 [PROTO_18]
       68 CAPTURE                          VAL R6
       69 CAPTURE                          VAL R7
       70 CAPTURE                          VAL R14
       71 CAPTURE                          VAL R13
       72 CAPTURE                          VAL R1
       73 RETURN                           R15 1
