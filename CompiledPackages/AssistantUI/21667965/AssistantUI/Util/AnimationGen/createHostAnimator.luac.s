PROTO_0:
        0 LOADK                            R4 K0 ["Animator"]
        1 NAMECALL                         R2 R0 K1 ["FindFirstChildOfClass"]
        3 CALL                             R2 2 1
        4 JUMPIFEQKNIL                     R2 ; [+18]
        6 NAMECALL                         R3 R2 K2 ["Destroy"]
        8 CALL                             R3 1 0
        9 GETUPVAL                         R3 0
       10 GETTABLEKS                       R3 R3 K3 ["FFlagAnimationGenOpenACE"]
       12 JUMPIFNOT                        R3 ; [+10]
       13 JUMPIFEQKNIL                     R1 ; [+9]
       15 JUMPIFEQKS                       R1 K4 [""] ; [+7]
       17 GETUPVAL                         R3 1
       18 LOADK                            R5 K5 ["AnimationGenTookOverAnimator"]
       19 MOVE                             R6 R1
       20 NAMECALL                         R3 R3 K6 ["Fire"]
       22 CALL                             R3 3 0
       23 GETIMPORT                        R3 K9 [Instance.new]
       25 LOADK                            R4 K0 ["Animator"]
       26 CALL                             R3 1 1
       27 SETTABLEKS                       R0 R3 K10 ["Parent"]
       29 RETURN                           R3 1

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
        0 GETTABLEKS                       R1 R0 K0 ["requestedClipId"]
        2 ADDK                             R1 R1 K1 [1]
        3 SETTABLEKS                       R1 R0 K0 ["requestedClipId"]
        5 GETTABLEKS                       R1 R0 K2 ["loadedAnimation"]
        7 JUMPIFNOTEQKNIL                  R1 ; [+2]
        9 RETURN                           R0 0
       10 GETTABLEKS                       R1 R0 K2 ["loadedAnimation"]
       12 GETTABLEKS                       R1 R1 K3 ["ancestryChangedConnection"]
       14 NAMECALL                         R1 R1 K4 ["Disconnect"]
       16 CALL                             R1 1 0
       17 GETUPVAL                         R1 0
       18 GETTABLEKS                       R2 R0 K2 ["loadedAnimation"]
       20 GETTABLEKS                       R2 R2 K5 ["animator"]
       22 CALL                             R1 1 0
       23 LOADNIL                          R1
       24 SETTABLEKS                       R1 R0 K2 ["loadedAnimation"]
       26 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["requestedClipId"]
        2 ADDK                             R1 R1 K1 [1]
        3 SETTABLEKS                       R1 R0 K0 ["requestedClipId"]
        5 GETTABLEKS                       R1 R0 K2 ["loadedAnimation"]
        7 JUMPIFNOTEQKNIL                  R1 ; [+2]
        9 JUMP                             ; [+16]
       10 GETTABLEKS                       R1 R0 K2 ["loadedAnimation"]
       12 GETTABLEKS                       R1 R1 K3 ["ancestryChangedConnection"]
       14 NAMECALL                         R1 R1 K4 ["Disconnect"]
       16 CALL                             R1 1 0
       17 GETUPVAL                         R1 0
       18 GETTABLEKS                       R2 R0 K2 ["loadedAnimation"]
       20 GETTABLEKS                       R2 R2 K5 ["animator"]
       22 CALL                             R1 1 0
       23 LOADNIL                          R1
       24 SETTABLEKS                       R1 R0 K2 ["loadedAnimation"]
       26 GETTABLEKS                       R1 R0 K6 ["renderSteppedConnection"]
       28 JUMPIFEQKNIL                     R1 ; [+9]
       30 GETTABLEKS                       R1 R0 K6 ["renderSteppedConnection"]
       32 NAMECALL                         R1 R1 K4 ["Disconnect"]
       34 CALL                             R1 1 0
       35 LOADNIL                          R1
       36 SETTABLEKS                       R1 R0 K6 ["renderSteppedConnection"]
       38 LOADB                            R1 0
       39 SETTABLEKS                       R1 R0 K7 ["isPlaying"]
       41 RETURN                           R0 0

PROTO_5:
        0 GETIMPORT                        R1 K3 [Enum.AnimationPriority.Action4]
        2 SETTABLEKS                       R1 R0 K4 ["Priority"]
        4 LOADB                            R1 1
        5 SETTABLEKS                       R1 R0 K5 ["Looped"]
        7 LOADN                            R3 0
        8 LOADN                            R4 1
        9 LOADN                            R5 0
       10 NAMECALL                         R1 R0 K6 ["Play"]
       12 CALL                             R1 4 0
       13 RETURN                           R0 0

PROTO_6:
        0 GETTABLEKS                       R1 R0 K0 ["loadedAnimation"]
        2 JUMPIFNOTEQKNIL                  R1 ; [+2]
        4 RETURN                           R0 0
        5 GETTABLEKS                       R2 R1 K1 ["animationTrack"]
        7 GETTABLEKS                       R3 R0 K2 ["currentTime"]
        9 SETTABLEKS                       R3 R2 K3 ["TimePosition"]
       11 GETUPVAL                         R2 0
       12 NAMECALL                         R2 R2 K4 ["IsRunning"]
       14 CALL                             R2 1 1
       15 JUMPIF                           R2 ; [+6]
       16 GETTABLEKS                       R2 R1 K5 ["animator"]
       18 LOADN                            R4 0
       19 NAMECALL                         R2 R2 K6 ["StepAnimations"]
       21 CALL                             R2 2 0
       22 RETURN                           R0 0

PROTO_7:
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

PROTO_8:
        0 GETTABLEKS                       R2 R0 K0 ["renderSteppedConnection"]
        2 JUMPIFEQKNIL                     R2 ; [+9]
        4 GETTABLEKS                       R2 R0 K0 ["renderSteppedConnection"]
        6 NAMECALL                         R2 R2 K1 ["Disconnect"]
        8 CALL                             R2 1 0
        9 LOADNIL                          R2
       10 SETTABLEKS                       R2 R0 K0 ["renderSteppedConnection"]
       12 JUMPIFEQKNIL                     R1 ; [+5]
       14 GETTABLEKS                       R2 R1 K2 ["Length"]
       16 JUMPIFNOTEQKN                    R2 K3 [0] ; [+2]
       18 RETURN                           R0 0
       19 LOADB                            R2 1
       20 SETTABLEKS                       R2 R0 K4 ["isPlaying"]
       22 GETTABLEKS                       R2 R0 K5 ["currentTime"]
       24 GETIMPORT                        R3 K8 [os.clock]
       26 CALL                             R3 0 1
       27 GETTABLEKS                       R4 R1 K2 ["Length"]
       29 NEWCLOSURE                       R5 P0
       30 CAPTURE                          VAL R0
       31 CAPTURE                          VAL R2
       32 CAPTURE                          VAL R3
       33 CAPTURE                          VAL R4
       34 CAPTURE                          UPVAL U0
       35 GETUPVAL                         R6 0
       36 GETTABLEKS                       R6 R6 K9 ["RenderStepped"]
       38 MOVE                             R8 R5
       39 NAMECALL                         R6 R6 K10 ["Connect"]
       41 CALL                             R6 2 1
       42 SETTABLEKS                       R6 R0 K0 ["renderSteppedConnection"]
       44 MOVE                             R6 R5
       45 CALL                             R6 0 0
       46 RETURN                           R0 0

PROTO_9:
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

PROTO_10:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 JUMPIFEQKNIL                     R1 ; [+2]
        4 RETURN                           R0 0
        5 GETUPVAL                         R1 0
        6 DUPTABLE                         R2 K11 [{[1] = False, ["currentTime"] = 0, ["playbackSpeed"] = 1, ["loadedAnimation"] = , ["requestedClipId"] = 0, ["renderSteppedConnection"] = , ["context"] = }]
        7 SETTABLE                         R2 R1 R0
        8 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["LoadAnimation"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_12:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["rig"]
        3 JUMPIFEQKNIL                     R0 ; [+9]
        5 GETUPVAL                         R0 1
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R2 R2 K0 ["rig"]
        9 NAMECALL                         R0 R0 K1 ["IsDescendantOf"]
       11 CALL                             R0 2 1
       12 JUMPIF                           R0 ; [+35]
       13 GETUPVAL                         R0 0
       14 LOADB                            R1 1
       15 SETTABLEKS                       R1 R0 K2 ["needsReload"]
       17 GETUPVAL                         R0 2
       18 GETTABLEKS                       R1 R0 K3 ["requestedClipId"]
       20 ADDK                             R1 R1 K4 [1]
       21 SETTABLEKS                       R1 R0 K3 ["requestedClipId"]
       23 GETTABLEKS                       R1 R0 K5 ["loadedAnimation"]
       25 JUMPIFNOTEQKNIL                  R1 ; [+2]
       27 JUMP                             ; [+16]
       28 GETTABLEKS                       R1 R0 K5 ["loadedAnimation"]
       30 GETTABLEKS                       R1 R1 K6 ["ancestryChangedConnection"]
       32 NAMECALL                         R1 R1 K7 ["Disconnect"]
       34 CALL                             R1 1 0
       35 GETUPVAL                         R1 3
       36 GETTABLEKS                       R2 R0 K5 ["loadedAnimation"]
       38 GETTABLEKS                       R2 R2 K8 ["animator"]
       40 CALL                             R1 1 0
       41 LOADNIL                          R1
       42 SETTABLEKS                       R1 R0 K5 ["loadedAnimation"]
       44 GETUPVAL                         R0 4
       45 GETTABLEKS                       R0 R0 K9 ["animatorRemoved"]
       47 CALL                             R0 0 0
       48 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R4 0
        1 GETTABLE                         R3 R4 R0
        2 JUMPIFNOTEQKNIL                  R3 ; [+2]
        4 LOADB                            R5 0 +1
        5 LOADB                            R5 1
        6 FASTCALL2K                       ASSERT R5 K0 ; [+4]
        8 LOADK                            R6 K0 ["No playback state found"]
        9 GETIMPORT                        R4 K2 [assert]
       11 CALL                             R4 2 0
       12 MOVE                             R2 R3
       13 GETUPVAL                         R4 1
       14 GETTABLE                         R3 R4 R0
       15 GETTABLEKS                       R4 R3 K3 ["rig"]
       17 GETTABLEKS                       R5 R3 K4 ["composedReachSequence"]
       19 JUMPIF                           R5 ; [+2]
       20 GETTABLEKS                       R5 R3 K5 ["keyframeSequence"]
       22 JUMPIFEQKNIL                     R4 ; [+3]
       24 JUMPIFNOTEQKNIL                  R5 ; [+2]
       26 RETURN                           R0 0
       27 LOADK                            R8 K6 ["Humanoid"]
       28 NAMECALL                         R6 R4 K7 ["FindFirstChildOfClass"]
       30 CALL                             R6 2 1
       31 LOADK                            R9 K8 ["AnimationController"]
       32 NAMECALL                         R7 R4 K7 ["FindFirstChildOfClass"]
       34 CALL                             R7 2 1
       35 OR                               R8 R6 R7
       36 JUMPIFNOTEQKNIL                  R8 ; [+2]
       38 RETURN                           R0 0
       39 GETTABLEKS                       R9 R2 K9 ["requestedClipId"]
       41 ADDK                             R9 R9 K10 [1]
       42 SETTABLEKS                       R9 R2 K9 ["requestedClipId"]
       44 GETTABLEKS                       R9 R2 K11 ["loadedAnimation"]
       46 JUMPIFNOTEQKNIL                  R9 ; [+2]
       48 JUMP                             ; [+16]
       49 GETTABLEKS                       R9 R2 K11 ["loadedAnimation"]
       51 GETTABLEKS                       R9 R9 K12 ["ancestryChangedConnection"]
       53 NAMECALL                         R9 R9 K13 ["Disconnect"]
       55 CALL                             R9 1 0
       56 GETUPVAL                         R9 2
       57 GETTABLEKS                       R10 R2 K11 ["loadedAnimation"]
       59 GETTABLEKS                       R10 R10 K14 ["animator"]
       61 CALL                             R9 1 0
       62 LOADNIL                          R9
       63 SETTABLEKS                       R9 R2 K11 ["loadedAnimation"]
       65 GETTABLEKS                       R10 R1 K15 ["getUniqueId"]
       67 JUMPIFEQKNIL                     R10 ; [+6]
       69 GETTABLEKS                       R9 R1 K15 ["getUniqueId"]
       71 MOVE                             R10 R4
       72 CALL                             R9 1 1
       73 JUMP                             ; [+1]
       74 LOADNIL                          R9
       75 GETUPVAL                         R10 3
       76 MOVE                             R11 R8
       77 MOVE                             R12 R9
       78 CALL                             R10 2 1
       79 GETIMPORT                        R11 K18 [Instance.new]
       81 LOADK                            R12 K19 ["Animation"]
       82 CALL                             R11 1 1
       83 GETUPVAL                         R12 4
       84 MOVE                             R14 R5
       85 NAMECALL                         R12 R12 K20 ["RegisterKeyframeSequence"]
       87 CALL                             R12 2 1
       88 SETTABLEKS                       R12 R11 K21 ["AnimationId"]
       90 GETIMPORT                        R12 K23 [pcall]
       92 NEWCLOSURE                       R13 P0
       93 CAPTURE                          VAL R10
       94 CAPTURE                          VAL R11
       95 CALL                             R12 1 2
       96 JUMPIF                           R12 ; [+4]
       97 GETIMPORT                        R14 K25 [error]
       99 MOVE                             R15 R13
      100 CALL                             R14 1 0
      101 GETIMPORT                        R14 K29 [Enum.AnimationPriority.Action4]
      103 SETTABLEKS                       R14 R13 K30 ["Priority"]
      105 LOADB                            R14 1
      106 SETTABLEKS                       R14 R13 K31 ["Looped"]
      108 LOADN                            R16 0
      109 LOADN                            R17 1
      110 LOADN                            R18 0
      111 NAMECALL                         R14 R13 K32 ["Play"]
      113 CALL                             R14 4 0
      114 LOADNIL                          R14
      115 GETTABLEKS                       R15 R10 K33 ["AncestryChanged"]
      117 NEWCLOSURE                       R17 P1
      118 CAPTURE                          VAL R3
      119 CAPTURE                          VAL R10
      120 CAPTURE                          VAL R2
      121 CAPTURE                          UPVAL U2
      122 CAPTURE                          VAL R1
      123 NAMECALL                         R15 R15 K34 ["Connect"]
      125 CALL                             R15 2 1
      126 MOVE                             R14 R15
      127 DUPTABLE                         R15 K36 [{"animationTrack", "animator", "ancestryChangedConnection"}]
      128 SETTABLEKS                       R13 R15 K35 ["animationTrack"]
      130 SETTABLEKS                       R10 R15 K14 ["animator"]
      132 SETTABLEKS                       R14 R15 K12 ["ancestryChangedConnection"]
      134 SETTABLEKS                       R15 R2 K11 ["loadedAnimation"]
      136 LOADB                            R15 0
      137 SETTABLEKS                       R15 R3 K37 ["needsReload"]
      139 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R3 0
        1 GETTABLE                         R2 R3 R0
        2 GETUPVAL                         R4 1
        3 GETTABLE                         R3 R4 R0
        4 JUMPIFEQKNIL                     R2 ; [+7]
        6 JUMPIFEQKNIL                     R3 ; [+5]
        8 GETTABLEKS                       R4 R3 K0 ["rig"]
       10 JUMPIFNOTEQ                      R1 R4 ; [+2]
       12 RETURN                           R0 0
       13 GETTABLEKS                       R4 R2 K1 ["isPlaying"]
       15 GETTABLEKS                       R5 R2 K2 ["context"]
       17 GETTABLEKS                       R6 R2 K3 ["requestedClipId"]
       19 ADDK                             R6 R6 K4 [1]
       20 SETTABLEKS                       R6 R2 K3 ["requestedClipId"]
       22 GETTABLEKS                       R6 R2 K5 ["loadedAnimation"]
       24 JUMPIFNOTEQKNIL                  R6 ; [+2]
       26 JUMP                             ; [+16]
       27 GETTABLEKS                       R6 R2 K5 ["loadedAnimation"]
       29 GETTABLEKS                       R6 R6 K6 ["ancestryChangedConnection"]
       31 NAMECALL                         R6 R6 K7 ["Disconnect"]
       33 CALL                             R6 1 0
       34 GETUPVAL                         R6 2
       35 GETTABLEKS                       R7 R2 K5 ["loadedAnimation"]
       37 GETTABLEKS                       R7 R7 K8 ["animator"]
       39 CALL                             R6 1 0
       40 LOADNIL                          R6
       41 SETTABLEKS                       R6 R2 K5 ["loadedAnimation"]
       43 GETTABLEKS                       R6 R2 K9 ["renderSteppedConnection"]
       45 JUMPIFEQKNIL                     R6 ; [+9]
       47 GETTABLEKS                       R6 R2 K9 ["renderSteppedConnection"]
       49 NAMECALL                         R6 R6 K7 ["Disconnect"]
       51 CALL                             R6 1 0
       52 LOADNIL                          R6
       53 SETTABLEKS                       R6 R2 K9 ["renderSteppedConnection"]
       55 LOADB                            R6 0
       56 SETTABLEKS                       R6 R2 K1 ["isPlaying"]
       58 SETTABLEKS                       R1 R3 K0 ["rig"]
       60 LOADB                            R6 1
       61 SETTABLEKS                       R6 R3 K10 ["needsReload"]
       63 JUMPIFNOT                        R4 ; [+17]
       64 JUMPIFEQKNIL                     R5 ; [+16]
       66 LOADN                            R6 0
       67 SETTABLEKS                       R6 R2 K11 ["currentTime"]
       69 GETUPVAL                         R6 3
       70 MOVE                             R7 R0
       71 MOVE                             R8 R5
       72 CALL                             R6 2 0
       73 GETUPVAL                         R6 4
       74 MOVE                             R7 R2
       75 GETTABLEKS                       R8 R3 K12 ["keyframeSequence"]
       77 CALL                             R6 2 0
       78 GETTABLEKS                       R6 R5 K13 ["restartPlayback"]
       80 CALL                             R6 0 0
       81 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 JUMPIF                           R1 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R1 1
        6 LOADNIL                          R2
        7 LOADNIL                          R3
        8 FORGPREP                         R1
        9 GETUPVAL                         R6 2
       10 MOVE                             R7 R4
       11 MOVE                             R8 R0
       12 CALL                             R6 2 0
       13 FORGLOOP                         R1 1 ; [-5]
       15 RETURN                           R0 0

PROTO_16:
        0 GETTABLEKS                       R1 R0 K0 ["id"]
        2 GETUPVAL                         R3 0
        3 GETTABLE                         R2 R3 R1
        4 JUMPIFEQKNIL                     R2 ; [+2]
        6 JUMP                             ; [+3]
        7 GETUPVAL                         R2 0
        8 DUPTABLE                         R3 K12 [{["isPlaying"] = False, ["currentTime"] = 0, ["playbackSpeed"] = 1, ["loadedAnimation"] = , ["requestedClipId"] = 0, ["renderSteppedConnection"] = , ["context"] = }]
        9 SETTABLE                         R3 R2 R1
       10 GETUPVAL                         R4 0
       11 GETTABLE                         R3 R4 R1
       12 JUMPIFNOTEQKNIL                  R3 ; [+2]
       14 LOADB                            R5 0 +1
       15 LOADB                            R5 1
       16 FASTCALL2K                       ASSERT R5 K13 ; [+4]
       18 LOADK                            R6 K13 ["No playback state found"]
       19 GETIMPORT                        R4 K15 [assert]
       21 CALL                             R4 2 0
       22 MOVE                             R2 R3
       23 SETTABLEKS                       R0 R2 K11 ["context"]
       25 RETURN                           R0 0

PROTO_17:
        0 GETTABLEKS                       R2 R1 K0 ["id"]
        2 GETUPVAL                         R5 0
        3 GETTABLE                         R4 R5 R2
        4 JUMPIFNOTEQKNIL                  R4 ; [+2]
        6 LOADB                            R6 0 +1
        7 LOADB                            R6 1
        8 FASTCALL2K                       ASSERT R6 K1 ; [+4]
       10 LOADK                            R7 K1 ["No playback state found"]
       11 GETIMPORT                        R5 K3 [assert]
       13 CALL                             R5 2 0
       14 MOVE                             R3 R4
       15 GETUPVAL                         R5 1
       16 GETTABLE                         R4 R5 R2
       17 JUMPIFNOT                        R0 ; [+13]
       18 GETTABLEKS                       R5 R4 K4 ["needsReload"]
       20 JUMPIFNOT                        R5 ; [+4]
       21 GETUPVAL                         R5 2
       22 MOVE                             R6 R2
       23 MOVE                             R7 R1
       24 CALL                             R5 2 0
       25 GETUPVAL                         R5 3
       26 MOVE                             R6 R3
       27 GETTABLEKS                       R7 R4 K5 ["keyframeSequence"]
       29 CALL                             R5 2 0
       30 RETURN                           R0 0
       31 GETTABLEKS                       R5 R3 K6 ["renderSteppedConnection"]
       33 JUMPIFEQKNIL                     R5 ; [+9]
       35 GETTABLEKS                       R5 R3 K6 ["renderSteppedConnection"]
       37 NAMECALL                         R5 R5 K7 ["Disconnect"]
       39 CALL                             R5 1 0
       40 LOADNIL                          R5
       41 SETTABLEKS                       R5 R3 K6 ["renderSteppedConnection"]
       43 LOADB                            R5 0
       44 SETTABLEKS                       R5 R3 K8 ["isPlaying"]
       46 RETURN                           R0 0

PROTO_18:
        0 GETTABLEKS                       R2 R1 K0 ["id"]
        2 GETUPVAL                         R5 0
        3 GETTABLE                         R4 R5 R2
        4 JUMPIFNOTEQKNIL                  R4 ; [+2]
        6 LOADB                            R6 0 +1
        7 LOADB                            R6 1
        8 FASTCALL2K                       ASSERT R6 K1 ; [+4]
       10 LOADK                            R7 K1 ["No playback state found"]
       11 GETIMPORT                        R5 K3 [assert]
       13 CALL                             R5 2 0
       14 MOVE                             R3 R4
       15 GETUPVAL                         R5 1
       16 GETTABLE                         R4 R5 R2
       17 SETTABLEKS                       R0 R3 K4 ["currentTime"]
       19 GETTABLEKS                       R5 R4 K5 ["needsReload"]
       21 JUMPIFNOT                        R5 ; [+4]
       22 GETUPVAL                         R5 2
       23 MOVE                             R6 R2
       24 MOVE                             R7 R1
       25 CALL                             R5 2 0
       26 GETTABLEKS                       R5 R3 K6 ["loadedAnimation"]
       28 JUMPIFEQKNIL                     R5 ; [+20]
       30 GETTABLEKS                       R5 R3 K6 ["loadedAnimation"]
       32 GETTABLEKS                       R5 R5 K7 ["animationTrack"]
       34 SETTABLEKS                       R0 R5 K8 ["TimePosition"]
       36 GETUPVAL                         R5 3
       37 NAMECALL                         R5 R5 K9 ["IsRunning"]
       39 CALL                             R5 1 1
       40 JUMPIF                           R5 ; [+8]
       41 GETTABLEKS                       R5 R3 K6 ["loadedAnimation"]
       43 GETTABLEKS                       R5 R5 K10 ["animator"]
       45 LOADN                            R7 0
       46 NAMECALL                         R5 R5 K11 ["StepAnimations"]
       48 CALL                             R5 2 0
       49 GETTABLEKS                       R5 R3 K12 ["isPlaying"]
       51 JUMPIFNOT                        R5 ; [+5]
       52 GETUPVAL                         R5 4
       53 MOVE                             R6 R3
       54 GETTABLEKS                       R7 R4 K13 ["keyframeSequence"]
       56 CALL                             R5 2 0
       57 RETURN                           R0 0

PROTO_19:
        0 GETTABLEKS                       R2 R1 K0 ["id"]
        2 GETUPVAL                         R5 0
        3 GETTABLE                         R4 R5 R2
        4 JUMPIFNOTEQKNIL                  R4 ; [+2]
        6 LOADB                            R6 0 +1
        7 LOADB                            R6 1
        8 FASTCALL2K                       ASSERT R6 K1 ; [+4]
       10 LOADK                            R7 K1 ["No playback state found"]
       11 GETIMPORT                        R5 K3 [assert]
       13 CALL                             R5 2 0
       14 MOVE                             R3 R4
       15 GETUPVAL                         R5 1
       16 GETTABLE                         R4 R5 R2
       17 SETTABLEKS                       R0 R3 K4 ["playbackSpeed"]
       19 GETTABLEKS                       R5 R3 K5 ["isPlaying"]
       21 JUMPIFNOT                        R5 ; [+5]
       22 GETUPVAL                         R5 2
       23 MOVE                             R6 R3
       24 GETTABLEKS                       R7 R4 K6 ["keyframeSequence"]
       26 CALL                             R5 2 0
       27 RETURN                           R0 0

PROTO_20:
        0 GETUPVAL                         R0 0
        1 NEWTABLE                         R2 0 1
        3 GETUPVAL                         R3 1
        4 SETLIST                          R2 R3 1 [1]
        6 NAMECALL                         R0 R0 K0 ["PreloadAsync"]
        8 CALL                             R0 2 0
        9 RETURN                           R0 0

PROTO_21:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["animator"]
        3 GETUPVAL                         R2 1
        4 NAMECALL                         R0 R0 K1 ["LoadAnimation"]
        6 CALL                             R0 2 -1
        7 RETURN                           R0 -1

PROTO_22:
        0 GETIMPORT                        R0 K1 [pcall]
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CALL                             R0 1 0
        6 GETUPVAL                         R0 2
        7 GETTABLEKS                       R0 R0 K2 ["requestedClipId"]
        9 GETUPVAL                         R1 3
       10 JUMPIFNOTEQ                      R0 R1 ; [+7]
       12 GETUPVAL                         R0 2
       13 GETTABLEKS                       R0 R0 K3 ["loadedAnimation"]
       15 GETUPVAL                         R1 4
       16 JUMPIFEQ                         R0 R1 ; [+6]
       18 GETUPVAL                         R0 1
       19 NAMECALL                         R0 R0 K4 ["Destroy"]
       21 CALL                             R0 1 0
       22 RETURN                           R0 0
       23 GETIMPORT                        R0 K1 [pcall]
       25 NEWCLOSURE                       R1 P1
       26 CAPTURE                          UPVAL U4
       27 CAPTURE                          UPVAL U1
       28 CALL                             R0 1 2
       29 GETUPVAL                         R2 1
       30 NAMECALL                         R2 R2 K4 ["Destroy"]
       32 CALL                             R2 1 0
       33 JUMPIF                           R0 ; [+1]
       34 RETURN                           R0 0
       35 GETUPVAL                         R2 4
       36 GETTABLEKS                       R2 R2 K5 ["animationTrack"]
       38 LOADN                            R4 0
       39 NAMECALL                         R2 R2 K6 ["Stop"]
       41 CALL                             R2 2 0
       42 GETIMPORT                        R2 K10 [Enum.AnimationPriority.Action4]
       44 SETTABLEKS                       R2 R1 K11 ["Priority"]
       46 LOADB                            R2 1
       47 SETTABLEKS                       R2 R1 K12 ["Looped"]
       49 LOADN                            R4 0
       50 LOADN                            R5 1
       51 LOADN                            R6 0
       52 NAMECALL                         R2 R1 K13 ["Play"]
       54 CALL                             R2 4 0
       55 GETUPVAL                         R2 4
       56 SETTABLEKS                       R1 R2 K5 ["animationTrack"]
       58 GETUPVAL                         R2 2
       59 GETTABLEKS                       R3 R2 K3 ["loadedAnimation"]
       61 JUMPIFNOTEQKNIL                  R3 ; [+2]
       63 RETURN                           R0 0
       64 GETTABLEKS                       R4 R3 K5 ["animationTrack"]
       66 GETTABLEKS                       R5 R2 K14 ["currentTime"]
       68 SETTABLEKS                       R5 R4 K15 ["TimePosition"]
       70 GETUPVAL                         R4 5
       71 NAMECALL                         R4 R4 K16 ["IsRunning"]
       73 CALL                             R4 1 1
       74 JUMPIF                           R4 ; [+6]
       75 GETTABLEKS                       R4 R3 K17 ["animator"]
       77 LOADN                            R6 0
       78 NAMECALL                         R4 R4 K18 ["StepAnimations"]
       80 CALL                             R4 2 0
       81 RETURN                           R0 0

PROTO_23:
        0 GETUPVAL                         R3 0
        1 GETTABLE                         R2 R3 R1
        2 GETTABLEKS                       R3 R2 K0 ["composedReachSequence"]
        4 JUMPIF                           R3 ; [+2]
        5 GETTABLEKS                       R3 R2 K1 ["keyframeSequence"]
        7 GETTABLEKS                       R4 R0 K2 ["loadedAnimation"]
        9 JUMPIFEQKNIL                     R3 ; [+3]
       11 JUMPIFNOTEQKNIL                  R4 ; [+2]
       13 RETURN                           R0 0
       14 LOADB                            R5 0
       15 SETTABLEKS                       R5 R2 K3 ["needsReload"]
       17 GETTABLEKS                       R5 R0 K4 ["requestedClipId"]
       19 ADDK                             R5 R5 K5 [1]
       20 SETTABLEKS                       R5 R0 K4 ["requestedClipId"]
       22 GETTABLEKS                       R5 R0 K4 ["requestedClipId"]
       24 GETIMPORT                        R6 K8 [Instance.new]
       26 LOADK                            R7 K9 ["Animation"]
       27 CALL                             R6 1 1
       28 GETUPVAL                         R7 1
       29 MOVE                             R9 R3
       30 NAMECALL                         R7 R7 K10 ["RegisterKeyframeSequence"]
       32 CALL                             R7 2 1
       33 SETTABLEKS                       R7 R6 K11 ["AnimationId"]
       35 GETIMPORT                        R7 K14 [task.spawn]
       37 NEWCLOSURE                       R8 P0
       38 CAPTURE                          UPVAL U2
       39 CAPTURE                          VAL R6
       40 CAPTURE                          VAL R0
       41 CAPTURE                          VAL R5
       42 CAPTURE                          VAL R4
       43 CAPTURE                          UPVAL U3
       44 CALL                             R7 1 0
       45 RETURN                           R0 0

PROTO_24:
        0 GETTABLEKS                       R1 R0 K0 ["id"]
        2 GETUPVAL                         R3 0
        3 GETTABLE                         R2 R3 R1
        4 GETUPVAL                         R4 1
        5 GETTABLE                         R3 R4 R1
        6 JUMPIFEQKNIL                     R2 ; [+3]
        8 JUMPIFNOTEQKNIL                  R3 ; [+2]
       10 RETURN                           R0 0
       11 GETTABLEKS                       R4 R2 K1 ["loadedAnimation"]
       13 JUMPIFNOTEQKNIL                  R4 ; [+5]
       15 LOADB                            R4 1
       16 SETTABLEKS                       R4 R3 K2 ["needsReload"]
       18 RETURN                           R0 0
       19 GETUPVAL                         R4 2
       20 MOVE                             R5 R2
       21 MOVE                             R6 R1
       22 CALL                             R4 2 0
       23 RETURN                           R0 0

PROTO_25:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 1
        5 LOADNIL                          R1
        6 LOADNIL                          R2
        7 FORGPREP                         R0
        8 GETTABLEKS                       R5 R4 K1 ["requestedClipId"]
       10 ADDK                             R5 R5 K2 [1]
       11 SETTABLEKS                       R5 R4 K1 ["requestedClipId"]
       13 GETTABLEKS                       R5 R4 K3 ["loadedAnimation"]
       15 JUMPIFNOTEQKNIL                  R5 ; [+2]
       17 JUMP                             ; [+16]
       18 GETTABLEKS                       R5 R4 K3 ["loadedAnimation"]
       20 GETTABLEKS                       R5 R5 K4 ["ancestryChangedConnection"]
       22 NAMECALL                         R5 R5 K0 ["Disconnect"]
       24 CALL                             R5 1 0
       25 GETUPVAL                         R5 2
       26 GETTABLEKS                       R6 R4 K3 ["loadedAnimation"]
       28 GETTABLEKS                       R6 R6 K5 ["animator"]
       30 CALL                             R5 1 0
       31 LOADNIL                          R5
       32 SETTABLEKS                       R5 R4 K3 ["loadedAnimation"]
       34 GETTABLEKS                       R5 R4 K6 ["renderSteppedConnection"]
       36 JUMPIFEQKNIL                     R5 ; [+9]
       38 GETTABLEKS                       R5 R4 K6 ["renderSteppedConnection"]
       40 NAMECALL                         R5 R5 K0 ["Disconnect"]
       42 CALL                             R5 1 0
       43 LOADNIL                          R5
       44 SETTABLEKS                       R5 R4 K6 ["renderSteppedConnection"]
       46 LOADB                            R5 0
       47 SETTABLEKS                       R5 R4 K7 ["isPlaying"]
       49 FORGLOOP                         R0 2 ; [-42]
       51 GETIMPORT                        R0 K10 [table.clear]
       53 GETUPVAL                         R1 1
       54 CALL                             R0 1 0
       55 RETURN                           R0 0

PROTO_26:
        0 NEWTABLE                         R2 0 0
        2 NEWCLOSURE                       R3 P0
        3 CAPTURE                          VAL R2
        4 NEWCLOSURE                       R4 P1
        5 CAPTURE                          VAL R2
        6 NEWCLOSURE                       R5 P2
        7 CAPTURE                          VAL R2
        8 CAPTURE                          VAL R1
        9 CAPTURE                          UPVAL U0
       10 CAPTURE                          UPVAL U1
       11 CAPTURE                          UPVAL U2
       12 NEWCLOSURE                       R6 P3
       13 CAPTURE                          VAL R2
       14 CAPTURE                          VAL R1
       15 CAPTURE                          UPVAL U0
       16 CAPTURE                          VAL R5
       17 CAPTURE                          UPVAL U3
       18 NEWCLOSURE                       R9 P4
       19 CAPTURE                          UPVAL U4
       20 CAPTURE                          VAL R2
       21 CAPTURE                          VAL R6
       22 NAMECALL                         R7 R0 K0 ["Connect"]
       24 CALL                             R7 2 1
       25 NEWCLOSURE                       R8 P5
       26 CAPTURE                          VAL R2
       27 NEWCLOSURE                       R9 P6
       28 CAPTURE                          VAL R2
       29 CAPTURE                          VAL R1
       30 CAPTURE                          VAL R5
       31 CAPTURE                          UPVAL U3
       32 NEWCLOSURE                       R10 P7
       33 CAPTURE                          VAL R2
       34 CAPTURE                          VAL R1
       35 CAPTURE                          VAL R5
       36 CAPTURE                          UPVAL U5
       37 CAPTURE                          UPVAL U3
       38 NEWCLOSURE                       R11 P8
       39 CAPTURE                          VAL R2
       40 CAPTURE                          VAL R1
       41 CAPTURE                          UPVAL U3
       42 NEWCLOSURE                       R12 P9
       43 CAPTURE                          VAL R1
       44 CAPTURE                          UPVAL U2
       45 CAPTURE                          UPVAL U6
       46 CAPTURE                          UPVAL U5
       47 NEWCLOSURE                       R13 P10
       48 CAPTURE                          VAL R2
       49 CAPTURE                          VAL R1
       50 CAPTURE                          VAL R12
       51 NEWCLOSURE                       R14 P11
       52 CAPTURE                          VAL R7
       53 CAPTURE                          VAL R2
       54 CAPTURE                          UPVAL U0
       55 DUPTABLE                         R15 K7 [{"setAnimation", "setIsPlaying", "setCurrentTime", "setPlaybackSpeed", "swapPlayingSequence", "destroy"}]
       56 SETTABLEKS                       R8 R15 K1 ["setAnimation"]
       58 SETTABLEKS                       R9 R15 K2 ["setIsPlaying"]
       60 SETTABLEKS                       R10 R15 K3 ["setCurrentTime"]
       62 SETTABLEKS                       R11 R15 K4 ["setPlaybackSpeed"]
       64 SETTABLEKS                       R13 R15 K5 ["swapPlayingSequence"]
       66 SETTABLEKS                       R14 R15 K6 ["destroy"]
       68 RETURN                           R15 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["ContentProvider"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K1 [game]
        9 LOADK                            R3 K4 ["KeyframeSequenceProvider"]
       10 NAMECALL                         R1 R1 K3 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K1 [game]
       15 LOADK                            R4 K5 ["MemStorageService"]
       16 NAMECALL                         R2 R2 K3 ["GetService"]
       18 CALL                             R2 2 1
       19 GETIMPORT                        R3 K1 [game]
       21 LOADK                            R5 K6 ["RunService"]
       22 NAMECALL                         R3 R3 K3 ["GetService"]
       24 CALL                             R3 2 1
       25 GETIMPORT                        R4 K8 [script]
       27 LOADK                            R6 K9 ["AssistantUI"]
       28 NAMECALL                         R4 R4 K10 ["FindFirstAncestor"]
       30 CALL                             R4 2 1
       31 GETIMPORT                        R5 K12 [require]
       33 GETTABLEKS                       R6 R4 K13 ["Parent"]
       35 GETTABLEKS                       R6 R6 K14 ["Signal"]
       37 CALL                             R5 1 1
       38 GETIMPORT                        R6 K12 [require]
       40 GETTABLEKS                       R7 R4 K15 ["Flags"]
       42 CALL                             R6 1 1
       43 GETIMPORT                        R7 K12 [require]
       45 GETTABLEKS                       R8 R4 K16 ["Util"]
       47 GETTABLEKS                       R8 R8 K17 ["AnimationGen"]
       49 GETTABLEKS                       R8 R8 K18 ["HostTypes"]
       51 CALL                             R7 1 1
       52 GETIMPORT                        R8 K12 [require]
       54 GETTABLEKS                       R9 R4 K19 ["Types"]
       56 CALL                             R8 1 1
       57 GETIMPORT                        R9 K12 [require]
       59 GETTABLEKS                       R10 R4 K16 ["Util"]
       61 GETTABLEKS                       R10 R10 K17 ["AnimationGen"]
       63 GETTABLEKS                       R10 R10 K20 ["clearAnimationPose"]
       65 CALL                             R9 1 1
       66 GETIMPORT                        R10 K12 [require]
       68 GETTABLEKS                       R11 R4 K16 ["Util"]
       70 GETTABLEKS                       R11 R11 K17 ["AnimationGen"]
       72 GETTABLEKS                       R11 R11 K21 ["isRigInWorkspace"]
       74 CALL                             R10 1 1
       75 DUPCLOSURE                       R11 K22 [PROTO_0]
       76 CAPTURE                          VAL R6
       77 CAPTURE                          VAL R2
       78 DUPCLOSURE                       R12 K23 [PROTO_1]
       79 DUPCLOSURE                       R13 K24 [PROTO_2]
       80 DUPCLOSURE                       R14 K25 [PROTO_3]
       81 CAPTURE                          VAL R9
       82 DUPCLOSURE                       R15 K26 [PROTO_4]
       83 CAPTURE                          VAL R9
       84 DUPCLOSURE                       R16 K27 [PROTO_5]
       85 DUPCLOSURE                       R17 K28 [PROTO_6]
       86 CAPTURE                          VAL R3
       87 DUPCLOSURE                       R18 K29 [PROTO_8]
       88 CAPTURE                          VAL R3
       89 DUPCLOSURE                       R19 K30 [PROTO_26]
       90 CAPTURE                          VAL R9
       91 CAPTURE                          VAL R11
       92 CAPTURE                          VAL R1
       93 CAPTURE                          VAL R18
       94 CAPTURE                          VAL R10
       95 CAPTURE                          VAL R3
       96 CAPTURE                          VAL R0
       97 RETURN                           R19 1
