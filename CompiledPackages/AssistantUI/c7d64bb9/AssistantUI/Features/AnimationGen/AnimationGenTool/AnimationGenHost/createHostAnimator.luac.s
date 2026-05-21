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
       12 GETUPVAL                         R3 0
       13 GETTABLEKS                       R3 R3 K4 ["duration"]
       15 MOD                              R1 R2 R3
       16 SETTABLEKS                       R1 R0 K5 ["currentTime"]
       18 GETUPVAL                         R0 0
       19 GETTABLEKS                       R0 R0 K6 ["animationTrack"]
       21 JUMPIFEQKNIL                     R0 ; [+21]
       23 GETUPVAL                         R0 0
       24 GETTABLEKS                       R0 R0 K7 ["animator"]
       26 JUMPIFEQKNIL                     R0 ; [+16]
       28 GETUPVAL                         R0 0
       29 GETTABLEKS                       R0 R0 K6 ["animationTrack"]
       31 GETUPVAL                         R1 0
       32 GETTABLEKS                       R1 R1 K5 ["currentTime"]
       34 SETTABLEKS                       R1 R0 K8 ["TimePosition"]
       36 GETUPVAL                         R0 0
       37 GETTABLEKS                       R0 R0 K7 ["animator"]
       39 LOADN                            R2 0
       40 NAMECALL                         R0 R0 K9 ["StepAnimations"]
       42 CALL                             R0 2 0
       43 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["renderSteppedConnection"]
        2 JUMPIFEQKNIL                     R1 ; [+9]
        4 GETTABLEKS                       R1 R0 K0 ["renderSteppedConnection"]
        6 NAMECALL                         R1 R1 K1 ["Disconnect"]
        8 CALL                             R1 1 0
        9 LOADNIL                          R1
       10 SETTABLEKS                       R1 R0 K0 ["renderSteppedConnection"]
       12 GETTABLEKS                       R1 R0 K2 ["duration"]
       14 JUMPIFNOTEQKN                    R1 K3 [0] ; [+2]
       16 RETURN                           R0 0
       17 GETTABLEKS                       R1 R0 K4 ["currentTime"]
       19 GETIMPORT                        R2 K7 [os.clock]
       21 CALL                             R2 0 1
       22 NEWCLOSURE                       R3 P0
       23 CAPTURE                          VAL R0
       24 CAPTURE                          VAL R1
       25 CAPTURE                          VAL R2
       26 GETUPVAL                         R4 0
       27 GETTABLEKS                       R4 R4 K8 ["RenderStepped"]
       29 MOVE                             R6 R3
       30 NAMECALL                         R4 R4 K9 ["Connect"]
       32 CALL                             R4 2 1
       33 SETTABLEKS                       R4 R0 K0 ["renderSteppedConnection"]
       35 GETIMPORT                        R8 K7 [os.clock]
       37 CALL                             R8 0 1
       38 SUB                              R7 R8 R2
       39 GETTABLEKS                       R8 R0 K10 ["playbackSpeed"]
       41 MUL                              R6 R7 R8
       42 ADD                              R5 R1 R6
       43 GETTABLEKS                       R6 R0 K2 ["duration"]
       45 MOD                              R4 R5 R6
       46 SETTABLEKS                       R4 R0 K4 ["currentTime"]
       48 GETTABLEKS                       R4 R0 K11 ["animationTrack"]
       50 JUMPIFEQKNIL                     R4 ; [+17]
       52 GETTABLEKS                       R4 R0 K12 ["animator"]
       54 JUMPIFEQKNIL                     R4 ; [+13]
       56 GETTABLEKS                       R4 R0 K11 ["animationTrack"]
       58 GETTABLEKS                       R5 R0 K4 ["currentTime"]
       60 SETTABLEKS                       R5 R4 K13 ["TimePosition"]
       62 GETTABLEKS                       R4 R0 K12 ["animator"]
       64 LOADN                            R6 0
       65 NAMECALL                         R4 R4 K14 ["StepAnimations"]
       67 CALL                             R4 2 0
       68 RETURN                           R0 0

PROTO_4:
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

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 JUMPIFEQKNIL                     R1 ; [+13]
        4 GETTABLEKS                       R2 R1 K0 ["renderSteppedConnection"]
        6 JUMPIFEQKNIL                     R2 ; [+9]
        8 GETTABLEKS                       R2 R1 K0 ["renderSteppedConnection"]
       10 NAMECALL                         R2 R2 K1 ["Disconnect"]
       12 CALL                             R2 1 0
       13 LOADNIL                          R2
       14 SETTABLEKS                       R2 R1 K0 ["renderSteppedConnection"]
       16 GETUPVAL                         R2 0
       17 DUPTABLE                         R3 K8 [{"isPlaying", "currentTime", "duration", "playbackSpeed", "animationTrack", "animator", "renderSteppedConnection"}]
       18 LOADB                            R4 0
       19 SETTABLEKS                       R4 R3 K2 ["isPlaying"]
       21 LOADN                            R4 0
       22 SETTABLEKS                       R4 R3 K3 ["currentTime"]
       24 LOADN                            R4 0
       25 SETTABLEKS                       R4 R3 K4 ["duration"]
       27 LOADN                            R4 1
       28 SETTABLEKS                       R4 R3 K5 ["playbackSpeed"]
       30 LOADNIL                          R4
       31 SETTABLEKS                       R4 R3 K6 ["animationTrack"]
       33 LOADNIL                          R4
       34 SETTABLEKS                       R4 R3 K7 ["animator"]
       36 LOADNIL                          R4
       37 SETTABLEKS                       R4 R3 K0 ["renderSteppedConnection"]
       39 SETTABLE                         R3 R2 R0
       40 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["LoadAnimation"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_7:
        0 LOADK                            R5 K0 ["Humanoid"]
        1 NAMECALL                         R3 R1 K1 ["FindFirstChildOfClass"]
        3 CALL                             R3 2 1
        4 LOADK                            R6 K2 ["AnimationController"]
        5 NAMECALL                         R4 R1 K1 ["FindFirstChildOfClass"]
        7 CALL                             R4 2 1
        8 OR                               R5 R3 R4
        9 JUMPIFNOTEQKNIL                  R5 ; [+3]
       11 LOADN                            R6 0
       12 RETURN                           R6 1
       13 GETTABLEKS                       R6 R2 K3 ["handlerArgs"]
       15 GETTABLEKS                       R6 R6 K4 ["contentId"]
       17 GETUPVAL                         R8 0
       18 GETTABLE                         R7 R8 R6
       19 JUMPIFEQKNIL                     R7 ; [+13]
       21 GETTABLEKS                       R8 R7 K5 ["renderSteppedConnection"]
       23 JUMPIFEQKNIL                     R8 ; [+9]
       25 GETTABLEKS                       R8 R7 K5 ["renderSteppedConnection"]
       27 NAMECALL                         R8 R8 K6 ["Disconnect"]
       29 CALL                             R8 1 0
       30 LOADNIL                          R8
       31 SETTABLEKS                       R8 R7 K5 ["renderSteppedConnection"]
       33 GETUPVAL                         R8 0
       34 DUPTABLE                         R9 K13 [{"isPlaying", "currentTime", "duration", "playbackSpeed", "animationTrack", "animator", "renderSteppedConnection"}]
       35 LOADB                            R10 0
       36 SETTABLEKS                       R10 R9 K7 ["isPlaying"]
       38 LOADN                            R10 0
       39 SETTABLEKS                       R10 R9 K8 ["currentTime"]
       41 LOADN                            R10 0
       42 SETTABLEKS                       R10 R9 K9 ["duration"]
       44 LOADN                            R10 1
       45 SETTABLEKS                       R10 R9 K10 ["playbackSpeed"]
       47 LOADNIL                          R10
       48 SETTABLEKS                       R10 R9 K11 ["animationTrack"]
       50 LOADNIL                          R10
       51 SETTABLEKS                       R10 R9 K12 ["animator"]
       53 LOADNIL                          R10
       54 SETTABLEKS                       R10 R9 K5 ["renderSteppedConnection"]
       56 SETTABLE                         R9 R8 R6
       57 LOADK                            R10 K14 ["Animator"]
       58 NAMECALL                         R8 R5 K1 ["FindFirstChildOfClass"]
       60 CALL                             R8 2 1
       61 JUMPIFEQKNIL                     R8 ; [+4]
       63 NAMECALL                         R9 R8 K15 ["Destroy"]
       65 CALL                             R9 1 0
       66 GETIMPORT                        R9 K18 [Instance.new]
       68 LOADK                            R10 K14 ["Animator"]
       69 CALL                             R9 1 1
       70 SETTABLEKS                       R5 R9 K19 ["Parent"]
       72 MOVE                             R7 R9
       73 GETIMPORT                        R8 K18 [Instance.new]
       75 LOADK                            R9 K20 ["Animation"]
       76 CALL                             R8 1 1
       77 GETUPVAL                         R9 1
       78 MOVE                             R11 R0
       79 NAMECALL                         R9 R9 K21 ["RegisterKeyframeSequence"]
       81 CALL                             R9 2 1
       82 SETTABLEKS                       R9 R8 K22 ["AnimationId"]
       84 GETIMPORT                        R9 K24 [pcall]
       86 NEWCLOSURE                       R10 P0
       87 CAPTURE                          VAL R7
       88 CAPTURE                          VAL R8
       89 CALL                             R9 1 2
       90 JUMPIF                           R9 ; [+2]
       91 LOADN                            R11 0
       92 RETURN                           R11 1
       93 GETIMPORT                        R11 K28 [Enum.AnimationPriority.Action4]
       95 SETTABLEKS                       R11 R10 K29 ["Priority"]
       97 LOADB                            R11 1
       98 SETTABLEKS                       R11 R10 K30 ["Looped"]
      100 LOADN                            R13 0
      101 LOADN                            R14 1
      102 LOADN                            R15 0
      103 NAMECALL                         R11 R10 K31 ["Play"]
      105 CALL                             R11 4 0
      106 GETUPVAL                         R12 0
      107 GETTABLE                         R11 R12 R6
      108 SETTABLEKS                       R10 R11 K11 ["animationTrack"]
      110 SETTABLEKS                       R7 R11 K12 ["animator"]
      112 GETTABLEKS                       R12 R0 K32 ["Length"]
      114 SETTABLEKS                       R12 R11 K9 ["duration"]
      116 GETTABLEKS                       R12 R11 K9 ["duration"]
      118 RETURN                           R12 1

PROTO_8:
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
       17 SETTABLEKS                       R0 R2 K5 ["isPlaying"]
       19 JUMPIFNOT                        R0 ; [+4]
       20 GETUPVAL                         R3 1
       21 MOVE                             R4 R2
       22 CALL                             R3 1 0
       23 RETURN                           R0 0
       24 GETTABLEKS                       R3 R2 K6 ["renderSteppedConnection"]
       26 JUMPIFEQKNIL                     R3 ; [+9]
       28 GETTABLEKS                       R3 R2 K6 ["renderSteppedConnection"]
       30 NAMECALL                         R3 R3 K7 ["Disconnect"]
       32 CALL                             R3 1 0
       33 LOADNIL                          R3
       34 SETTABLEKS                       R3 R2 K6 ["renderSteppedConnection"]
       36 RETURN                           R0 0

PROTO_9:
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
       19 GETTABLEKS                       R3 R2 K6 ["animationTrack"]
       21 JUMPIFEQKNIL                     R3 ; [+15]
       23 GETTABLEKS                       R3 R2 K7 ["animator"]
       25 JUMPIFEQKNIL                     R3 ; [+11]
       27 GETTABLEKS                       R3 R2 K6 ["animationTrack"]
       29 SETTABLEKS                       R0 R3 K8 ["TimePosition"]
       31 GETTABLEKS                       R3 R2 K7 ["animator"]
       33 LOADN                            R5 0
       34 NAMECALL                         R3 R3 K9 ["StepAnimations"]
       36 CALL                             R3 2 0
       37 GETTABLEKS                       R3 R2 K10 ["isPlaying"]
       39 JUMPIFNOT                        R3 ; [+3]
       40 GETUPVAL                         R3 1
       41 MOVE                             R4 R2
       42 CALL                             R3 1 0
       43 RETURN                           R0 0

PROTO_10:
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

PROTO_11:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 LOADNIL                          R2
        3 FORGPREP                         R0
        4 GETTABLEKS                       R5 R4 K0 ["renderSteppedConnection"]
        6 JUMPIFEQKNIL                     R5 ; [+9]
        8 GETTABLEKS                       R5 R4 K0 ["renderSteppedConnection"]
       10 NAMECALL                         R5 R5 K1 ["Disconnect"]
       12 CALL                             R5 1 0
       13 LOADNIL                          R5
       14 SETTABLEKS                       R5 R4 K0 ["renderSteppedConnection"]
       16 GETTABLEKS                       R5 R4 K2 ["animationTrack"]
       18 JUMPIFEQKNIL                     R5 ; [+6]
       20 GETTABLEKS                       R5 R4 K2 ["animationTrack"]
       22 NAMECALL                         R5 R5 K3 ["Stop"]
       24 CALL                             R5 1 0
       25 FORGLOOP                         R0 2 ; [-22]
       27 GETIMPORT                        R0 K6 [table.clear]
       29 GETUPVAL                         R1 0
       30 CALL                             R0 1 0
       31 RETURN                           R0 0

PROTO_12:
        0 NEWTABLE                         R0 0 0
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          VAL R0
        4 NEWCLOSURE                       R2 P1
        5 CAPTURE                          VAL R0
        6 NEWCLOSURE                       R3 P2
        7 CAPTURE                          VAL R0
        8 CAPTURE                          UPVAL U0
        9 NEWCLOSURE                       R4 P3
       10 CAPTURE                          VAL R0
       11 CAPTURE                          UPVAL U1
       12 NEWCLOSURE                       R5 P4
       13 CAPTURE                          VAL R0
       14 CAPTURE                          UPVAL U1
       15 NEWCLOSURE                       R6 P5
       16 CAPTURE                          VAL R0
       17 CAPTURE                          UPVAL U1
       18 NEWCLOSURE                       R7 P6
       19 CAPTURE                          VAL R0
       20 DUPTABLE                         R8 K5 [{"setupAnimator", "setIsPlaying", "setCurrentTime", "setPlaybackSpeed", "destroy"}]
       21 SETTABLEKS                       R3 R8 K0 ["setupAnimator"]
       23 SETTABLEKS                       R4 R8 K1 ["setIsPlaying"]
       25 SETTABLEKS                       R5 R8 K2 ["setCurrentTime"]
       27 SETTABLEKS                       R6 R8 K3 ["setPlaybackSpeed"]
       29 SETTABLEKS                       R7 R8 K4 ["destroy"]
       31 RETURN                           R8 1

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
       37 DUPCLOSURE                       R6 K15 [PROTO_0]
       38 DUPCLOSURE                       R7 K16 [PROTO_1]
       39 DUPCLOSURE                       R8 K17 [PROTO_3]
       40 CAPTURE                          VAL R1
       41 DUPCLOSURE                       R9 K18 [PROTO_12]
       42 CAPTURE                          VAL R0
       43 CAPTURE                          VAL R8
       44 RETURN                           R9 1
