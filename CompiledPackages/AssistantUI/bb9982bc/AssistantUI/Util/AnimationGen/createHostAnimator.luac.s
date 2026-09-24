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

PROTO_7:
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

PROTO_8:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 JUMPIFEQKNIL                     R1 ; [+2]
        4 RETURN                           R0 0
        5 GETUPVAL                         R1 0
        6 DUPTABLE                         R2 K10 [{[1] = False, ["currentTime"] = 0, ["playbackSpeed"] = 1, ["loadedAnimation"] = , ["renderSteppedConnection"] = , ["context"] = }]
        7 SETTABLE                         R2 R1 R0
        8 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["LoadAnimation"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_10:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["rig"]
        3 JUMPIFEQKNIL                     R0 ; [+9]
        5 GETUPVAL                         R0 1
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R2 R2 K0 ["rig"]
        9 NAMECALL                         R0 R0 K1 ["IsDescendantOf"]
       11 CALL                             R0 2 1
       12 JUMPIF                           R0 ; [+30]
       13 GETUPVAL                         R0 0
       14 LOADB                            R1 1
       15 SETTABLEKS                       R1 R0 K2 ["needsReload"]
       17 GETUPVAL                         R0 2
       18 GETTABLEKS                       R1 R0 K3 ["loadedAnimation"]
       20 JUMPIFNOTEQKNIL                  R1 ; [+2]
       22 JUMP                             ; [+16]
       23 GETTABLEKS                       R1 R0 K3 ["loadedAnimation"]
       25 GETTABLEKS                       R1 R1 K4 ["ancestryChangedConnection"]
       27 NAMECALL                         R1 R1 K5 ["Disconnect"]
       29 CALL                             R1 1 0
       30 GETUPVAL                         R1 3
       31 GETTABLEKS                       R2 R0 K3 ["loadedAnimation"]
       33 GETTABLEKS                       R2 R2 K6 ["animator"]
       35 CALL                             R1 1 0
       36 LOADNIL                          R1
       37 SETTABLEKS                       R1 R0 K3 ["loadedAnimation"]
       39 GETUPVAL                         R0 4
       40 GETTABLEKS                       R0 R0 K7 ["animatorRemoved"]
       42 CALL                             R0 0 0
       43 RETURN                           R0 0

PROTO_11:
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
       17 GETTABLEKS                       R5 R3 K4 ["keyframeSequence"]
       19 JUMPIFEQKNIL                     R4 ; [+3]
       21 JUMPIFNOTEQKNIL                  R5 ; [+2]
       23 RETURN                           R0 0
       24 LOADK                            R8 K5 ["Humanoid"]
       25 NAMECALL                         R6 R4 K6 ["FindFirstChildOfClass"]
       27 CALL                             R6 2 1
       28 LOADK                            R9 K7 ["AnimationController"]
       29 NAMECALL                         R7 R4 K6 ["FindFirstChildOfClass"]
       31 CALL                             R7 2 1
       32 OR                               R8 R6 R7
       33 JUMPIFNOTEQKNIL                  R8 ; [+2]
       35 RETURN                           R0 0
       36 GETTABLEKS                       R9 R2 K8 ["loadedAnimation"]
       38 JUMPIFNOTEQKNIL                  R9 ; [+2]
       40 JUMP                             ; [+16]
       41 GETTABLEKS                       R9 R2 K8 ["loadedAnimation"]
       43 GETTABLEKS                       R9 R9 K9 ["ancestryChangedConnection"]
       45 NAMECALL                         R9 R9 K10 ["Disconnect"]
       47 CALL                             R9 1 0
       48 GETUPVAL                         R9 2
       49 GETTABLEKS                       R10 R2 K8 ["loadedAnimation"]
       51 GETTABLEKS                       R10 R10 K11 ["animator"]
       53 CALL                             R9 1 0
       54 LOADNIL                          R9
       55 SETTABLEKS                       R9 R2 K8 ["loadedAnimation"]
       57 GETTABLEKS                       R10 R1 K12 ["getUniqueId"]
       59 JUMPIFEQKNIL                     R10 ; [+6]
       61 GETTABLEKS                       R9 R1 K12 ["getUniqueId"]
       63 MOVE                             R10 R4
       64 CALL                             R9 1 1
       65 JUMP                             ; [+1]
       66 LOADNIL                          R9
       67 GETUPVAL                         R10 3
       68 MOVE                             R11 R8
       69 MOVE                             R12 R9
       70 CALL                             R10 2 1
       71 GETIMPORT                        R11 K15 [Instance.new]
       73 LOADK                            R12 K16 ["Animation"]
       74 CALL                             R11 1 1
       75 GETUPVAL                         R12 4
       76 MOVE                             R14 R5
       77 NAMECALL                         R12 R12 K17 ["RegisterKeyframeSequence"]
       79 CALL                             R12 2 1
       80 SETTABLEKS                       R12 R11 K18 ["AnimationId"]
       82 GETIMPORT                        R12 K20 [pcall]
       84 NEWCLOSURE                       R13 P0
       85 CAPTURE                          VAL R10
       86 CAPTURE                          VAL R11
       87 CALL                             R12 1 2
       88 JUMPIF                           R12 ; [+4]
       89 GETIMPORT                        R14 K22 [error]
       91 MOVE                             R15 R13
       92 CALL                             R14 1 0
       93 GETIMPORT                        R14 K26 [Enum.AnimationPriority.Action4]
       95 SETTABLEKS                       R14 R13 K27 ["Priority"]
       97 LOADB                            R14 1
       98 SETTABLEKS                       R14 R13 K28 ["Looped"]
      100 LOADN                            R16 0
      101 LOADN                            R17 1
      102 LOADN                            R18 0
      103 NAMECALL                         R14 R13 K29 ["Play"]
      105 CALL                             R14 4 0
      106 LOADNIL                          R14
      107 GETTABLEKS                       R15 R10 K30 ["AncestryChanged"]
      109 NEWCLOSURE                       R17 P1
      110 CAPTURE                          VAL R3
      111 CAPTURE                          VAL R10
      112 CAPTURE                          VAL R2
      113 CAPTURE                          UPVAL U2
      114 CAPTURE                          VAL R1
      115 NAMECALL                         R15 R15 K31 ["Connect"]
      117 CALL                             R15 2 1
      118 MOVE                             R14 R15
      119 DUPTABLE                         R15 K33 [{"animationTrack", "animator", "ancestryChangedConnection"}]
      120 SETTABLEKS                       R13 R15 K32 ["animationTrack"]
      122 SETTABLEKS                       R10 R15 K11 ["animator"]
      124 SETTABLEKS                       R14 R15 K9 ["ancestryChangedConnection"]
      126 SETTABLEKS                       R15 R2 K8 ["loadedAnimation"]
      128 LOADB                            R15 0
      129 SETTABLEKS                       R15 R3 K34 ["needsReload"]
      131 RETURN                           R0 0

PROTO_12:
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
       17 GETTABLEKS                       R6 R2 K3 ["loadedAnimation"]
       19 JUMPIFNOTEQKNIL                  R6 ; [+2]
       21 JUMP                             ; [+16]
       22 GETTABLEKS                       R6 R2 K3 ["loadedAnimation"]
       24 GETTABLEKS                       R6 R6 K4 ["ancestryChangedConnection"]
       26 NAMECALL                         R6 R6 K5 ["Disconnect"]
       28 CALL                             R6 1 0
       29 GETUPVAL                         R6 2
       30 GETTABLEKS                       R7 R2 K3 ["loadedAnimation"]
       32 GETTABLEKS                       R7 R7 K6 ["animator"]
       34 CALL                             R6 1 0
       35 LOADNIL                          R6
       36 SETTABLEKS                       R6 R2 K3 ["loadedAnimation"]
       38 GETTABLEKS                       R6 R2 K7 ["renderSteppedConnection"]
       40 JUMPIFEQKNIL                     R6 ; [+9]
       42 GETTABLEKS                       R6 R2 K7 ["renderSteppedConnection"]
       44 NAMECALL                         R6 R6 K5 ["Disconnect"]
       46 CALL                             R6 1 0
       47 LOADNIL                          R6
       48 SETTABLEKS                       R6 R2 K7 ["renderSteppedConnection"]
       50 LOADB                            R6 0
       51 SETTABLEKS                       R6 R2 K1 ["isPlaying"]
       53 SETTABLEKS                       R1 R3 K0 ["rig"]
       55 LOADB                            R6 1
       56 SETTABLEKS                       R6 R3 K8 ["needsReload"]
       58 JUMPIFNOT                        R4 ; [+17]
       59 JUMPIFEQKNIL                     R5 ; [+16]
       61 LOADN                            R6 0
       62 SETTABLEKS                       R6 R2 K9 ["currentTime"]
       64 GETUPVAL                         R6 3
       65 MOVE                             R7 R0
       66 MOVE                             R8 R5
       67 CALL                             R6 2 0
       68 GETUPVAL                         R6 4
       69 MOVE                             R7 R2
       70 GETTABLEKS                       R8 R3 K10 ["keyframeSequence"]
       72 CALL                             R6 2 0
       73 GETTABLEKS                       R6 R5 K11 ["restartPlayback"]
       75 CALL                             R6 0 0
       76 RETURN                           R0 0

PROTO_13:
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

PROTO_14:
        0 GETTABLEKS                       R1 R0 K0 ["id"]
        2 GETUPVAL                         R3 0
        3 GETTABLE                         R2 R3 R1
        4 JUMPIFEQKNIL                     R2 ; [+2]
        6 JUMP                             ; [+3]
        7 GETUPVAL                         R2 0
        8 DUPTABLE                         R3 K11 [{["isPlaying"] = False, ["currentTime"] = 0, ["playbackSpeed"] = 1, ["loadedAnimation"] = , ["renderSteppedConnection"] = , ["context"] = }]
        9 SETTABLE                         R3 R2 R1
       10 GETUPVAL                         R4 0
       11 GETTABLE                         R3 R4 R1
       12 JUMPIFNOTEQKNIL                  R3 ; [+2]
       14 LOADB                            R5 0 +1
       15 LOADB                            R5 1
       16 FASTCALL2K                       ASSERT R5 K12 ; [+4]
       18 LOADK                            R6 K12 ["No playback state found"]
       19 GETIMPORT                        R4 K14 [assert]
       21 CALL                             R4 2 0
       22 MOVE                             R2 R3
       23 SETTABLEKS                       R0 R2 K10 ["context"]
       25 RETURN                           R0 0

PROTO_15:
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

PROTO_16:
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
       17 SETTABLEKS                       R0 R3 K4 ["playbackSpeed"]
       19 GETTABLEKS                       R5 R3 K5 ["isPlaying"]
       21 JUMPIFNOT                        R5 ; [+5]
       22 GETUPVAL                         R5 2
       23 MOVE                             R6 R3
       24 GETTABLEKS                       R7 R4 K6 ["keyframeSequence"]
       26 CALL                             R5 2 0
       27 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 1
        5 LOADNIL                          R1
        6 LOADNIL                          R2
        7 FORGPREP                         R0
        8 GETTABLEKS                       R5 R4 K1 ["loadedAnimation"]
       10 JUMPIFNOTEQKNIL                  R5 ; [+2]
       12 JUMP                             ; [+16]
       13 GETTABLEKS                       R5 R4 K1 ["loadedAnimation"]
       15 GETTABLEKS                       R5 R5 K2 ["ancestryChangedConnection"]
       17 NAMECALL                         R5 R5 K0 ["Disconnect"]
       19 CALL                             R5 1 0
       20 GETUPVAL                         R5 2
       21 GETTABLEKS                       R6 R4 K1 ["loadedAnimation"]
       23 GETTABLEKS                       R6 R6 K3 ["animator"]
       25 CALL                             R5 1 0
       26 LOADNIL                          R5
       27 SETTABLEKS                       R5 R4 K1 ["loadedAnimation"]
       29 GETTABLEKS                       R5 R4 K4 ["renderSteppedConnection"]
       31 JUMPIFEQKNIL                     R5 ; [+9]
       33 GETTABLEKS                       R5 R4 K4 ["renderSteppedConnection"]
       35 NAMECALL                         R5 R5 K0 ["Disconnect"]
       37 CALL                             R5 1 0
       38 LOADNIL                          R5
       39 SETTABLEKS                       R5 R4 K4 ["renderSteppedConnection"]
       41 LOADB                            R5 0
       42 SETTABLEKS                       R5 R4 K5 ["isPlaying"]
       44 FORGLOOP                         R0 2 ; [-37]
       46 GETIMPORT                        R0 K8 [table.clear]
       48 GETUPVAL                         R1 1
       49 CALL                             R0 1 0
       50 RETURN                           R0 0

PROTO_19:
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
       43 CAPTURE                          VAL R7
       44 CAPTURE                          VAL R2
       45 CAPTURE                          UPVAL U0
       46 DUPTABLE                         R13 K6 [{"setAnimation", "setIsPlaying", "setCurrentTime", "setPlaybackSpeed", "destroy"}]
       47 SETTABLEKS                       R8 R13 K1 ["setAnimation"]
       49 SETTABLEKS                       R9 R13 K2 ["setIsPlaying"]
       51 SETTABLEKS                       R10 R13 K3 ["setCurrentTime"]
       53 SETTABLEKS                       R11 R13 K4 ["setPlaybackSpeed"]
       55 SETTABLEKS                       R12 R13 K5 ["destroy"]
       57 RETURN                           R13 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["KeyframeSequenceProvider"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K1 [game]
        9 LOADK                            R3 K4 ["MemStorageService"]
       10 NAMECALL                         R1 R1 K3 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K1 [game]
       15 LOADK                            R4 K5 ["RunService"]
       16 NAMECALL                         R2 R2 K3 ["GetService"]
       18 CALL                             R2 2 1
       19 GETIMPORT                        R3 K7 [script]
       21 LOADK                            R5 K8 ["AssistantUI"]
       22 NAMECALL                         R3 R3 K9 ["FindFirstAncestor"]
       24 CALL                             R3 2 1
       25 GETIMPORT                        R4 K11 [require]
       27 GETTABLEKS                       R5 R3 K12 ["Parent"]
       29 GETTABLEKS                       R5 R5 K13 ["Signal"]
       31 CALL                             R4 1 1
       32 GETIMPORT                        R5 K11 [require]
       34 GETTABLEKS                       R6 R3 K14 ["Flags"]
       36 CALL                             R5 1 1
       37 GETIMPORT                        R6 K11 [require]
       39 GETTABLEKS                       R7 R3 K15 ["Util"]
       41 GETTABLEKS                       R7 R7 K16 ["AnimationGen"]
       43 GETTABLEKS                       R7 R7 K17 ["HostTypes"]
       45 CALL                             R6 1 1
       46 GETIMPORT                        R7 K11 [require]
       48 GETTABLEKS                       R8 R3 K18 ["Types"]
       50 CALL                             R7 1 1
       51 GETIMPORT                        R8 K11 [require]
       53 GETTABLEKS                       R9 R3 K15 ["Util"]
       55 GETTABLEKS                       R9 R9 K16 ["AnimationGen"]
       57 GETTABLEKS                       R9 R9 K19 ["clearAnimationPose"]
       59 CALL                             R8 1 1
       60 GETIMPORT                        R9 K11 [require]
       62 GETTABLEKS                       R10 R3 K15 ["Util"]
       64 GETTABLEKS                       R10 R10 K16 ["AnimationGen"]
       66 GETTABLEKS                       R10 R10 K20 ["isRigInWorkspace"]
       68 CALL                             R9 1 1
       69 DUPCLOSURE                       R10 K21 [PROTO_0]
       70 CAPTURE                          VAL R5
       71 CAPTURE                          VAL R1
       72 DUPCLOSURE                       R11 K22 [PROTO_1]
       73 DUPCLOSURE                       R12 K23 [PROTO_2]
       74 DUPCLOSURE                       R13 K24 [PROTO_3]
       75 CAPTURE                          VAL R8
       76 DUPCLOSURE                       R14 K25 [PROTO_4]
       77 CAPTURE                          VAL R8
       78 DUPCLOSURE                       R15 K26 [PROTO_6]
       79 CAPTURE                          VAL R2
       80 DUPCLOSURE                       R16 K27 [PROTO_19]
       81 CAPTURE                          VAL R8
       82 CAPTURE                          VAL R10
       83 CAPTURE                          VAL R0
       84 CAPTURE                          VAL R15
       85 CAPTURE                          VAL R9
       86 CAPTURE                          VAL R2
       87 RETURN                           R16 1
