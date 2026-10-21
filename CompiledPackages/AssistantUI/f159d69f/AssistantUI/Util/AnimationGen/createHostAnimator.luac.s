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
       17 GETTABLEKS                       R1 R0 K2 ["loadedAnimation"]
       19 GETTABLEKS                       R1 R1 K5 ["tracks"]
       21 GETTABLEKS                       R1 R1 K6 ["destroy"]
       23 CALL                             R1 0 0
       24 GETUPVAL                         R1 0
       25 GETTABLEKS                       R2 R0 K2 ["loadedAnimation"]
       27 GETTABLEKS                       R2 R2 K7 ["animator"]
       29 CALL                             R1 1 0
       30 LOADNIL                          R1
       31 SETTABLEKS                       R1 R0 K2 ["loadedAnimation"]
       33 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["requestedClipId"]
        2 ADDK                             R1 R1 K1 [1]
        3 SETTABLEKS                       R1 R0 K0 ["requestedClipId"]
        5 GETTABLEKS                       R1 R0 K2 ["loadedAnimation"]
        7 JUMPIFNOTEQKNIL                  R1 ; [+2]
        9 JUMP                             ; [+23]
       10 GETTABLEKS                       R1 R0 K2 ["loadedAnimation"]
       12 GETTABLEKS                       R1 R1 K3 ["ancestryChangedConnection"]
       14 NAMECALL                         R1 R1 K4 ["Disconnect"]
       16 CALL                             R1 1 0
       17 GETTABLEKS                       R1 R0 K2 ["loadedAnimation"]
       19 GETTABLEKS                       R1 R1 K5 ["tracks"]
       21 GETTABLEKS                       R1 R1 K6 ["destroy"]
       23 CALL                             R1 0 0
       24 GETUPVAL                         R1 0
       25 GETTABLEKS                       R2 R0 K2 ["loadedAnimation"]
       27 GETTABLEKS                       R2 R2 K7 ["animator"]
       29 CALL                             R1 1 0
       30 LOADNIL                          R1
       31 SETTABLEKS                       R1 R0 K2 ["loadedAnimation"]
       33 GETTABLEKS                       R1 R0 K8 ["renderSteppedConnection"]
       35 JUMPIFEQKNIL                     R1 ; [+9]
       37 GETTABLEKS                       R1 R0 K8 ["renderSteppedConnection"]
       39 NAMECALL                         R1 R1 K4 ["Disconnect"]
       41 CALL                             R1 1 0
       42 LOADNIL                          R1
       43 SETTABLEKS                       R1 R0 K8 ["renderSteppedConnection"]
       45 LOADB                            R1 0
       46 SETTABLEKS                       R1 R0 K9 ["isPlaying"]
       48 RETURN                           R0 0

PROTO_5:
        0 GETIMPORT                        R1 K2 [Instance.new]
        2 LOADK                            R2 K3 ["Animation"]
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 0
        5 MOVE                             R4 R0
        6 NAMECALL                         R2 R2 K4 ["RegisterKeyframeSequence"]
        8 CALL                             R2 2 1
        9 SETTABLEKS                       R2 R1 K5 ["AnimationId"]
       11 RETURN                           R1 1

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["LoadAnimation"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_7:
        0 GETIMPORT                        R2 K1 [pcall]
        2 NEWCLOSURE                       R3 P0
        3 CAPTURE                          VAL R0
        4 CAPTURE                          VAL R1
        5 CALL                             R2 1 2
        6 NAMECALL                         R4 R1 K2 ["Destroy"]
        8 CALL                             R4 1 0
        9 JUMPIF                           R2 ; [+7]
       10 LOADNIL                          R4
       11 FASTCALL1                        TOSTRING R3 ; [+3]
       12 MOVE                             R6 R3
       13 GETIMPORT                        R5 K4 [tostring]
       15 CALL                             R5 1 1
       16 RETURN                           R4 2
       17 MOVE                             R4 R3
       18 LOADNIL                          R5
       19 RETURN                           R4 2

PROTO_8:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 GETIMPORT                        R5 K2 [Instance.new]
        4 LOADK                            R6 K3 ["Animation"]
        5 CALL                             R5 1 1
        6 GETUPVAL                         R6 1
        7 MOVE                             R8 R1
        8 NAMECALL                         R6 R6 K4 ["RegisterKeyframeSequence"]
       10 CALL                             R6 2 1
       11 SETTABLEKS                       R6 R5 K5 ["AnimationId"]
       13 MOVE                             R4 R5
       14 CALL                             R2 2 -1
       15 RETURN                           R2 -1

PROTO_9:
        0 GETUPVAL                         R0 0
        1 NEWTABLE                         R2 0 1
        3 GETUPVAL                         R3 1
        4 SETLIST                          R2 R3 1 [1]
        6 NAMECALL                         R0 R0 K0 ["PreloadAsync"]
        8 CALL                             R0 2 0
        9 RETURN                           R0 0

PROTO_10:
        0 GETIMPORT                        R3 K2 [Instance.new]
        2 LOADK                            R4 K3 ["Animation"]
        3 CALL                             R3 1 1
        4 GETUPVAL                         R4 0
        5 MOVE                             R6 R1
        6 NAMECALL                         R4 R4 K4 ["RegisterKeyframeSequence"]
        8 CALL                             R4 2 1
        9 SETTABLEKS                       R4 R3 K5 ["AnimationId"]
       11 MOVE                             R2 R3
       12 GETIMPORT                        R3 K7 [pcall]
       14 NEWCLOSURE                       R4 P0
       15 CAPTURE                          UPVAL U1
       16 CAPTURE                          VAL R2
       17 CALL                             R3 1 0
       18 GETUPVAL                         R3 2
       19 MOVE                             R4 R0
       20 MOVE                             R5 R2
       21 CALL                             R3 2 -1
       22 RETURN                           R3 -1

PROTO_11:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R1 2 1
        4 RETURN                           R1 1

PROTO_12:
        0 GETTABLEKS                       R4 R1 K0 ["r6Blend"]
        2 GETTABLEKS                       R5 R1 K1 ["playsLiveR6Blend"]
        4 JUMPIFNOT                        R5 ; [+27]
        5 JUMPIFEQKNIL                     R4 ; [+26]
        7 GETUPVAL                         R5 0
        8 GETTABLEKS                       R5 R5 K2 ["aiGeneratedWeights"]
       10 GETTABLEKS                       R6 R4 K3 ["settings"]
       12 CALL                             R5 1 2
       13 GETUPVAL                         R7 1
       14 GETTABLEKS                       R8 R4 K4 ["clips"]
       16 GETTABLEKS                       R8 R8 K5 ["r6Clip"]
       18 MOVE                             R9 R2
       19 NEWCLOSURE                       R10 P0
       20 CAPTURE                          VAL R3
       21 CAPTURE                          VAL R0
       22 MOVE                             R11 R5
       23 MOVE                             R12 R6
       24 CALL                             R7 5 1
       25 JUMPIFEQKNIL                     R7 ; [+2]
       27 RETURN                           R7 1
       28 GETIMPORT                        R8 K7 [warn]
       30 LOADK                            R9 K8 ["[AnimationGen] Upper/lower blend tracks could not load; playing the unblended clip"]
       31 CALL                             R8 1 0
       32 MOVE                             R5 R3
       33 MOVE                             R6 R0
       34 MOVE                             R7 R2
       35 CALL                             R5 2 2
       36 JUMPIFNOTEQKNIL                  R5 ; [+4]
       38 LOADNIL                          R7
       39 MOVE                             R8 R6
       40 RETURN                           R7 2
       41 GETUPVAL                         R7 2
       42 GETTABLEKS                       R7 R7 K9 ["single"]
       44 MOVE                             R8 R5
       45 CALL                             R7 1 1
       46 LOADNIL                          R8
       47 RETURN                           R7 2

PROTO_13:
        0 GETTABLEKS                       R2 R1 K0 ["play"]
        2 CALL                             R2 0 0
        3 GETTABLEKS                       R2 R1 K1 ["needsWarmUpStep"]
        5 JUMPIFNOT                        R2 ; [+9]
        6 GETUPVAL                         R2 0
        7 NAMECALL                         R2 R2 K2 ["IsRunning"]
        9 CALL                             R2 1 1
       10 JUMPIF                           R2 ; [+4]
       11 LOADK                            R4 K3 [0.0166666666666667]
       12 NAMECALL                         R2 R0 K4 ["StepAnimations"]
       14 CALL                             R2 2 0
       15 RETURN                           R0 0

PROTO_14:
        0 GETTABLEKS                       R1 R0 K0 ["loadedAnimation"]
        2 JUMPIFNOTEQKNIL                  R1 ; [+2]
        4 RETURN                           R0 0
        5 GETTABLEKS                       R2 R1 K1 ["tracks"]
        7 GETTABLEKS                       R2 R2 K2 ["seek"]
        9 GETTABLEKS                       R3 R0 K3 ["currentTime"]
       11 CALL                             R2 1 0
       12 GETUPVAL                         R2 0
       13 NAMECALL                         R2 R2 K4 ["IsRunning"]
       15 CALL                             R2 1 1
       16 JUMPIF                           R2 ; [+6]
       17 GETTABLEKS                       R2 R1 K5 ["animator"]
       19 LOADN                            R4 0
       20 NAMECALL                         R2 R2 K6 ["StepAnimations"]
       22 CALL                             R2 2 0
       23 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R4 1
        2 GETIMPORT                        R5 K2 [os.clock]
        4 CALL                             R5 0 1
        5 ADD                              R3 R4 R5
        6 GETUPVAL                         R4 2
        7 SUB                              R2 R3 R4
        8 GETUPVAL                         R3 3
        9 MOD                              R1 R2 R3
       10 SETTABLEKS                       R1 R0 K3 ["currentTime"]
       12 GETUPVAL                         R0 0
       13 GETTABLEKS                       R1 R0 K4 ["loadedAnimation"]
       15 JUMPIFNOTEQKNIL                  R1 ; [+2]
       17 RETURN                           R0 0
       18 GETTABLEKS                       R2 R1 K5 ["tracks"]
       20 GETTABLEKS                       R2 R2 K6 ["seek"]
       22 GETTABLEKS                       R3 R0 K3 ["currentTime"]
       24 CALL                             R2 1 0
       25 GETUPVAL                         R2 4
       26 NAMECALL                         R2 R2 K7 ["IsRunning"]
       28 CALL                             R2 1 1
       29 JUMPIF                           R2 ; [+6]
       30 GETTABLEKS                       R2 R1 K8 ["animator"]
       32 LOADN                            R4 0
       33 NAMECALL                         R2 R2 K9 ["StepAnimations"]
       35 CALL                             R2 2 0
       36 RETURN                           R0 0

PROTO_16:
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
       44 GETIMPORT                        R9 K8 [os.clock]
       46 CALL                             R9 0 1
       47 ADD                              R8 R2 R9
       48 SUB                              R7 R8 R3
       49 MOD                              R6 R7 R4
       50 SETTABLEKS                       R6 R0 K5 ["currentTime"]
       52 GETTABLEKS                       R6 R0 K11 ["loadedAnimation"]
       54 JUMPIFNOTEQKNIL                  R6 ; [+2]
       56 RETURN                           R0 0
       57 GETTABLEKS                       R7 R6 K12 ["tracks"]
       59 GETTABLEKS                       R7 R7 K13 ["seek"]
       61 GETTABLEKS                       R8 R0 K5 ["currentTime"]
       63 CALL                             R7 1 0
       64 GETUPVAL                         R7 0
       65 NAMECALL                         R7 R7 K14 ["IsRunning"]
       67 CALL                             R7 1 1
       68 JUMPIF                           R7 ; [+6]
       69 GETTABLEKS                       R7 R6 K15 ["animator"]
       71 LOADN                            R9 0
       72 NAMECALL                         R7 R7 K16 ["StepAnimations"]
       74 CALL                             R7 2 0
       75 RETURN                           R0 0

PROTO_17:
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

PROTO_18:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 JUMPIFEQKNIL                     R1 ; [+2]
        4 RETURN                           R0 0
        5 GETUPVAL                         R1 0
        6 DUPTABLE                         R2 K9 [{[1] = False, ["currentTime"] = 0, ["loadedAnimation"] = , ["requestedClipId"] = 0, ["renderSteppedConnection"] = , ["context"] = }]
        7 SETTABLE                         R2 R1 R0
        8 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["rig"]
        3 JUMPIFEQKNIL                     R0 ; [+13]
        5 GETIMPORT                        R3 K2 [game]
        7 NAMECALL                         R1 R0 K3 ["IsDescendantOf"]
        9 CALL                             R1 2 1
       10 JUMPIFNOT                        R1 ; [+6]
       11 GETUPVAL                         R1 1
       12 MOVE                             R3 R0
       13 NAMECALL                         R1 R1 K3 ["IsDescendantOf"]
       15 CALL                             R1 2 1
       16 JUMPIF                           R1 ; [+42]
       17 GETUPVAL                         R1 0
       18 LOADB                            R2 1
       19 SETTABLEKS                       R2 R1 K4 ["needsReload"]
       21 GETUPVAL                         R1 2
       22 GETTABLEKS                       R2 R1 K5 ["requestedClipId"]
       24 ADDK                             R2 R2 K6 [1]
       25 SETTABLEKS                       R2 R1 K5 ["requestedClipId"]
       27 GETTABLEKS                       R2 R1 K7 ["loadedAnimation"]
       29 JUMPIFNOTEQKNIL                  R2 ; [+2]
       31 JUMP                             ; [+23]
       32 GETTABLEKS                       R2 R1 K7 ["loadedAnimation"]
       34 GETTABLEKS                       R2 R2 K8 ["ancestryChangedConnection"]
       36 NAMECALL                         R2 R2 K9 ["Disconnect"]
       38 CALL                             R2 1 0
       39 GETTABLEKS                       R2 R1 K7 ["loadedAnimation"]
       41 GETTABLEKS                       R2 R2 K10 ["tracks"]
       43 GETTABLEKS                       R2 R2 K11 ["destroy"]
       45 CALL                             R2 0 0
       46 GETUPVAL                         R2 3
       47 GETTABLEKS                       R3 R1 K7 ["loadedAnimation"]
       49 GETTABLEKS                       R3 R3 K12 ["animator"]
       51 CALL                             R2 1 0
       52 LOADNIL                          R2
       53 SETTABLEKS                       R2 R1 K7 ["loadedAnimation"]
       55 GETUPVAL                         R1 4
       56 GETTABLEKS                       R1 R1 K13 ["animatorRemoved"]
       58 CALL                             R1 0 0
       59 RETURN                           R0 0

PROTO_20:
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
       48 JUMP                             ; [+23]
       49 GETTABLEKS                       R9 R2 K11 ["loadedAnimation"]
       51 GETTABLEKS                       R9 R9 K12 ["ancestryChangedConnection"]
       53 NAMECALL                         R9 R9 K13 ["Disconnect"]
       55 CALL                             R9 1 0
       56 GETTABLEKS                       R9 R2 K11 ["loadedAnimation"]
       58 GETTABLEKS                       R9 R9 K14 ["tracks"]
       60 GETTABLEKS                       R9 R9 K15 ["destroy"]
       62 CALL                             R9 0 0
       63 GETUPVAL                         R9 2
       64 GETTABLEKS                       R10 R2 K11 ["loadedAnimation"]
       66 GETTABLEKS                       R10 R10 K16 ["animator"]
       68 CALL                             R9 1 0
       69 LOADNIL                          R9
       70 SETTABLEKS                       R9 R2 K11 ["loadedAnimation"]
       72 GETTABLEKS                       R10 R1 K17 ["getUniqueId"]
       74 JUMPIFEQKNIL                     R10 ; [+6]
       76 GETTABLEKS                       R9 R1 K17 ["getUniqueId"]
       78 MOVE                             R10 R4
       79 CALL                             R9 1 1
       80 JUMP                             ; [+1]
       81 LOADNIL                          R9
       82 GETUPVAL                         R10 3
       83 MOVE                             R11 R8
       84 MOVE                             R12 R9
       85 CALL                             R10 2 1
       86 GETUPVAL                         R11 4
       87 MOVE                             R12 R10
       88 MOVE                             R13 R3
       89 MOVE                             R14 R5
       90 GETUPVAL                         R15 5
       91 CALL                             R11 4 2
       92 JUMPIFNOTEQKNIL                  R11 ; [+5]
       94 GETIMPORT                        R13 K19 [error]
       96 MOVE                             R14 R12
       97 CALL                             R13 1 0
       98 GETTABLEKS                       R13 R11 K20 ["play"]
      100 CALL                             R13 0 0
      101 GETTABLEKS                       R13 R11 K21 ["needsWarmUpStep"]
      103 JUMPIFNOT                        R13 ; [+9]
      104 GETUPVAL                         R13 6
      105 NAMECALL                         R13 R13 K22 ["IsRunning"]
      107 CALL                             R13 1 1
      108 JUMPIF                           R13 ; [+4]
      109 LOADK                            R15 K23 [0.0166666666666667]
      110 NAMECALL                         R13 R10 K24 ["StepAnimations"]
      112 CALL                             R13 2 0
      113 LOADNIL                          R13
      114 GETTABLEKS                       R14 R10 K25 ["AncestryChanged"]
      116 NEWCLOSURE                       R16 P0
      117 CAPTURE                          VAL R3
      118 CAPTURE                          VAL R10
      119 CAPTURE                          VAL R2
      120 CAPTURE                          UPVAL U2
      121 CAPTURE                          VAL R1
      122 NAMECALL                         R14 R14 K26 ["Connect"]
      124 CALL                             R14 2 1
      125 MOVE                             R13 R14
      126 DUPTABLE                         R14 K27 [{"tracks", "animator", "ancestryChangedConnection"}]
      127 SETTABLEKS                       R11 R14 K14 ["tracks"]
      129 SETTABLEKS                       R10 R14 K16 ["animator"]
      131 SETTABLEKS                       R13 R14 K12 ["ancestryChangedConnection"]
      133 SETTABLEKS                       R14 R2 K11 ["loadedAnimation"]
      135 LOADB                            R14 0
      136 SETTABLEKS                       R14 R3 K28 ["needsReload"]
      138 RETURN                           R0 0

PROTO_21:
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
       26 JUMP                             ; [+23]
       27 GETTABLEKS                       R6 R2 K5 ["loadedAnimation"]
       29 GETTABLEKS                       R6 R6 K6 ["ancestryChangedConnection"]
       31 NAMECALL                         R6 R6 K7 ["Disconnect"]
       33 CALL                             R6 1 0
       34 GETTABLEKS                       R6 R2 K5 ["loadedAnimation"]
       36 GETTABLEKS                       R6 R6 K8 ["tracks"]
       38 GETTABLEKS                       R6 R6 K9 ["destroy"]
       40 CALL                             R6 0 0
       41 GETUPVAL                         R6 2
       42 GETTABLEKS                       R7 R2 K5 ["loadedAnimation"]
       44 GETTABLEKS                       R7 R7 K10 ["animator"]
       46 CALL                             R6 1 0
       47 LOADNIL                          R6
       48 SETTABLEKS                       R6 R2 K5 ["loadedAnimation"]
       50 GETTABLEKS                       R6 R2 K11 ["renderSteppedConnection"]
       52 JUMPIFEQKNIL                     R6 ; [+9]
       54 GETTABLEKS                       R6 R2 K11 ["renderSteppedConnection"]
       56 NAMECALL                         R6 R6 K7 ["Disconnect"]
       58 CALL                             R6 1 0
       59 LOADNIL                          R6
       60 SETTABLEKS                       R6 R2 K11 ["renderSteppedConnection"]
       62 LOADB                            R6 0
       63 SETTABLEKS                       R6 R2 K1 ["isPlaying"]
       65 SETTABLEKS                       R1 R3 K0 ["rig"]
       67 LOADB                            R6 1
       68 SETTABLEKS                       R6 R3 K12 ["needsReload"]
       70 JUMPIFNOT                        R4 ; [+17]
       71 JUMPIFEQKNIL                     R5 ; [+16]
       73 LOADN                            R6 0
       74 SETTABLEKS                       R6 R2 K13 ["currentTime"]
       76 GETUPVAL                         R6 3
       77 MOVE                             R7 R0
       78 MOVE                             R8 R5
       79 CALL                             R6 2 0
       80 GETUPVAL                         R6 4
       81 MOVE                             R7 R2
       82 GETTABLEKS                       R8 R3 K14 ["keyframeSequence"]
       84 CALL                             R6 2 0
       85 GETTABLEKS                       R6 R5 K15 ["restartPlayback"]
       87 CALL                             R6 0 0
       88 RETURN                           R0 0

PROTO_22:
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

PROTO_23:
        0 GETTABLEKS                       R1 R0 K0 ["id"]
        2 GETUPVAL                         R3 0
        3 GETTABLE                         R2 R3 R1
        4 JUMPIFEQKNIL                     R2 ; [+2]
        6 JUMP                             ; [+3]
        7 GETUPVAL                         R2 0
        8 DUPTABLE                         R3 K10 [{["isPlaying"] = False, ["currentTime"] = 0, ["loadedAnimation"] = , ["requestedClipId"] = 0, ["renderSteppedConnection"] = , ["context"] = }]
        9 SETTABLE                         R3 R2 R1
       10 GETUPVAL                         R4 0
       11 GETTABLE                         R3 R4 R1
       12 JUMPIFNOTEQKNIL                  R3 ; [+2]
       14 LOADB                            R5 0 +1
       15 LOADB                            R5 1
       16 FASTCALL2K                       ASSERT R5 K11 ; [+4]
       18 LOADK                            R6 K11 ["No playback state found"]
       19 GETIMPORT                        R4 K13 [assert]
       21 CALL                             R4 2 0
       22 MOVE                             R2 R3
       23 SETTABLEKS                       R0 R2 K9 ["context"]
       25 RETURN                           R0 0

PROTO_24:
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

PROTO_25:
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
       28 JUMPIFNOTEQKNIL                  R5 ; [+2]
       30 JUMP                             ; [+18]
       31 GETTABLEKS                       R6 R5 K7 ["tracks"]
       33 GETTABLEKS                       R6 R6 K8 ["seek"]
       35 GETTABLEKS                       R7 R3 K4 ["currentTime"]
       37 CALL                             R6 1 0
       38 GETUPVAL                         R6 3
       39 NAMECALL                         R6 R6 K9 ["IsRunning"]
       41 CALL                             R6 1 1
       42 JUMPIF                           R6 ; [+6]
       43 GETTABLEKS                       R6 R5 K10 ["animator"]
       45 LOADN                            R8 0
       46 NAMECALL                         R6 R6 K11 ["StepAnimations"]
       48 CALL                             R6 2 0
       49 GETTABLEKS                       R5 R3 K12 ["isPlaying"]
       51 JUMPIFNOT                        R5 ; [+5]
       52 GETUPVAL                         R5 4
       53 MOVE                             R6 R3
       54 GETTABLEKS                       R7 R4 K13 ["keyframeSequence"]
       56 CALL                             R5 2 0
       57 RETURN                           R0 0

PROTO_26:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["animator"]
        4 GETUPVAL                         R2 2
        5 GETUPVAL                         R3 3
        6 GETUPVAL                         R4 4
        7 CALL                             R0 4 1
        8 JUMPIFNOTEQKNIL                  R0 ; [+2]
       10 RETURN                           R0 0
       11 GETUPVAL                         R1 5
       12 GETTABLEKS                       R1 R1 K1 ["requestedClipId"]
       14 GETUPVAL                         R2 6
       15 JUMPIFNOTEQ                      R1 R2 ; [+7]
       17 GETUPVAL                         R1 5
       18 GETTABLEKS                       R1 R1 K2 ["loadedAnimation"]
       20 GETUPVAL                         R2 1
       21 JUMPIFEQ                         R1 R2 ; [+5]
       23 GETTABLEKS                       R1 R0 K3 ["destroy"]
       25 CALL                             R1 0 0
       26 RETURN                           R0 0
       27 GETUPVAL                         R1 1
       28 GETTABLEKS                       R1 R1 K4 ["tracks"]
       30 GETTABLEKS                       R1 R1 K3 ["destroy"]
       32 CALL                             R1 0 0
       33 GETUPVAL                         R1 1
       34 GETTABLEKS                       R1 R1 K0 ["animator"]
       36 GETTABLEKS                       R2 R0 K5 ["play"]
       38 CALL                             R2 0 0
       39 GETTABLEKS                       R2 R0 K6 ["needsWarmUpStep"]
       41 JUMPIFNOT                        R2 ; [+9]
       42 GETUPVAL                         R2 7
       43 NAMECALL                         R2 R2 K7 ["IsRunning"]
       45 CALL                             R2 1 1
       46 JUMPIF                           R2 ; [+4]
       47 LOADK                            R4 K8 [0.0166666666666667]
       48 NAMECALL                         R2 R1 K9 ["StepAnimations"]
       50 CALL                             R2 2 0
       51 GETUPVAL                         R1 1
       52 SETTABLEKS                       R0 R1 K4 ["tracks"]
       54 GETUPVAL                         R1 5
       55 GETTABLEKS                       R2 R1 K2 ["loadedAnimation"]
       57 JUMPIFNOTEQKNIL                  R2 ; [+2]
       59 RETURN                           R0 0
       60 GETTABLEKS                       R3 R2 K4 ["tracks"]
       62 GETTABLEKS                       R3 R3 K10 ["seek"]
       64 GETTABLEKS                       R4 R1 K11 ["currentTime"]
       66 CALL                             R3 1 0
       67 GETUPVAL                         R3 7
       68 NAMECALL                         R3 R3 K7 ["IsRunning"]
       70 CALL                             R3 1 1
       71 JUMPIF                           R3 ; [+6]
       72 GETTABLEKS                       R3 R2 K0 ["animator"]
       74 LOADN                            R5 0
       75 NAMECALL                         R3 R3 K9 ["StepAnimations"]
       77 CALL                             R3 2 0
       78 RETURN                           R0 0

PROTO_27:
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
       24 GETIMPORT                        R6 K8 [task.spawn]
       26 NEWCLOSURE                       R7 P0
       27 CAPTURE                          UPVAL U1
       28 CAPTURE                          VAL R4
       29 CAPTURE                          VAL R2
       30 CAPTURE                          VAL R3
       31 CAPTURE                          UPVAL U2
       32 CAPTURE                          VAL R0
       33 CAPTURE                          VAL R5
       34 CAPTURE                          UPVAL U3
       35 CALL                             R6 1 0
       36 RETURN                           R0 0

PROTO_28:
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

PROTO_29:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R3 R0 K0 ["id"]
        3 GETTABLE                         R1 R2 R3
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R4 R0 K0 ["id"]
        7 GETTABLE                         R2 R3 R4
        8 JUMPIFEQKNIL                     R1 ; [+4]
       10 GETTABLEKS                       R3 R1 K1 ["loadedAnimation"]
       12 JUMP                             ; [+1]
       13 LOADNIL                          R3
       14 JUMPIFEQKNIL                     R2 ; [+4]
       16 GETTABLEKS                       R4 R2 K2 ["r6Blend"]
       18 JUMP                             ; [+1]
       19 LOADNIL                          R4
       20 JUMPIFEQKNIL                     R1 ; [+5]
       22 JUMPIFEQKNIL                     R3 ; [+3]
       24 JUMPIFNOTEQKNIL                  R4 ; [+2]
       26 RETURN                           R0 0
       27 GETTABLEKS                       R5 R3 K3 ["tracks"]
       29 GETTABLEKS                       R5 R5 K4 ["setR6BlendWeights"]
       31 GETUPVAL                         R6 2
       32 GETTABLEKS                       R6 R6 K5 ["aiGeneratedWeights"]
       34 GETTABLEKS                       R7 R4 K6 ["settings"]
       36 CALL                             R6 1 -1
       37 CALL                             R5 -1 0
       38 GETTABLEKS                       R5 R1 K7 ["isPlaying"]
       40 JUMPIF                           R5 ; [+11]
       41 GETUPVAL                         R5 3
       42 NAMECALL                         R5 R5 K8 ["IsRunning"]
       44 CALL                             R5 1 1
       45 JUMPIF                           R5 ; [+6]
       46 GETTABLEKS                       R5 R3 K9 ["animator"]
       48 LOADK                            R7 K10 [0.0166666666666667]
       49 NAMECALL                         R5 R5 K11 ["StepAnimations"]
       51 CALL                             R5 2 0
       52 GETTABLEKS                       R5 R1 K1 ["loadedAnimation"]
       54 JUMPIFNOTEQKNIL                  R5 ; [+2]
       56 RETURN                           R0 0
       57 GETTABLEKS                       R6 R5 K3 ["tracks"]
       59 GETTABLEKS                       R6 R6 K12 ["seek"]
       61 GETTABLEKS                       R7 R1 K13 ["currentTime"]
       63 CALL                             R6 1 0
       64 GETUPVAL                         R6 3
       65 NAMECALL                         R6 R6 K8 ["IsRunning"]
       67 CALL                             R6 1 1
       68 JUMPIF                           R6 ; [+6]
       69 GETTABLEKS                       R6 R5 K9 ["animator"]
       71 LOADN                            R8 0
       72 NAMECALL                         R6 R6 K11 ["StepAnimations"]
       74 CALL                             R6 2 0
       75 RETURN                           R0 0

PROTO_30:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 JUMPIFNOTEQKNIL                  R1 ; [+2]
        4 RETURN                           R0 0
        5 GETTABLEKS                       R2 R1 K0 ["requestedClipId"]
        7 ADDK                             R2 R2 K1 [1]
        8 SETTABLEKS                       R2 R1 K0 ["requestedClipId"]
       10 GETTABLEKS                       R2 R1 K2 ["loadedAnimation"]
       12 JUMPIFNOTEQKNIL                  R2 ; [+2]
       14 JUMP                             ; [+23]
       15 GETTABLEKS                       R2 R1 K2 ["loadedAnimation"]
       17 GETTABLEKS                       R2 R2 K3 ["ancestryChangedConnection"]
       19 NAMECALL                         R2 R2 K4 ["Disconnect"]
       21 CALL                             R2 1 0
       22 GETTABLEKS                       R2 R1 K2 ["loadedAnimation"]
       24 GETTABLEKS                       R2 R2 K5 ["tracks"]
       26 GETTABLEKS                       R2 R2 K6 ["destroy"]
       28 CALL                             R2 0 0
       29 GETUPVAL                         R2 1
       30 GETTABLEKS                       R3 R1 K2 ["loadedAnimation"]
       32 GETTABLEKS                       R3 R3 K7 ["animator"]
       34 CALL                             R2 1 0
       35 LOADNIL                          R2
       36 SETTABLEKS                       R2 R1 K2 ["loadedAnimation"]
       38 GETTABLEKS                       R2 R1 K8 ["renderSteppedConnection"]
       40 JUMPIFEQKNIL                     R2 ; [+9]
       42 GETTABLEKS                       R2 R1 K8 ["renderSteppedConnection"]
       44 NAMECALL                         R2 R2 K4 ["Disconnect"]
       46 CALL                             R2 1 0
       47 LOADNIL                          R2
       48 SETTABLEKS                       R2 R1 K8 ["renderSteppedConnection"]
       50 LOADB                            R2 0
       51 SETTABLEKS                       R2 R1 K9 ["isPlaying"]
       53 GETUPVAL                         R2 0
       54 LOADNIL                          R3
       55 SETTABLE                         R3 R2 R0
       56 RETURN                           R0 0

PROTO_31:
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
       17 JUMP                             ; [+23]
       18 GETTABLEKS                       R5 R4 K3 ["loadedAnimation"]
       20 GETTABLEKS                       R5 R5 K4 ["ancestryChangedConnection"]
       22 NAMECALL                         R5 R5 K0 ["Disconnect"]
       24 CALL                             R5 1 0
       25 GETTABLEKS                       R5 R4 K3 ["loadedAnimation"]
       27 GETTABLEKS                       R5 R5 K5 ["tracks"]
       29 GETTABLEKS                       R5 R5 K6 ["destroy"]
       31 CALL                             R5 0 0
       32 GETUPVAL                         R5 2
       33 GETTABLEKS                       R6 R4 K3 ["loadedAnimation"]
       35 GETTABLEKS                       R6 R6 K7 ["animator"]
       37 CALL                             R5 1 0
       38 LOADNIL                          R5
       39 SETTABLEKS                       R5 R4 K3 ["loadedAnimation"]
       41 GETTABLEKS                       R5 R4 K8 ["renderSteppedConnection"]
       43 JUMPIFEQKNIL                     R5 ; [+9]
       45 GETTABLEKS                       R5 R4 K8 ["renderSteppedConnection"]
       47 NAMECALL                         R5 R5 K0 ["Disconnect"]
       49 CALL                             R5 1 0
       50 LOADNIL                          R5
       51 SETTABLEKS                       R5 R4 K8 ["renderSteppedConnection"]
       53 LOADB                            R5 0
       54 SETTABLEKS                       R5 R4 K9 ["isPlaying"]
       56 FORGLOOP                         R0 2 ; [-49]
       58 GETIMPORT                        R0 K12 [table.clear]
       60 GETUPVAL                         R1 1
       61 CALL                             R0 1 0
       62 RETURN                           R0 0

PROTO_32:
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
       12 CAPTURE                          UPVAL U3
       13 CAPTURE                          UPVAL U4
       14 NEWCLOSURE                       R6 P3
       15 CAPTURE                          VAL R2
       16 CAPTURE                          VAL R1
       17 CAPTURE                          UPVAL U0
       18 CAPTURE                          VAL R5
       19 CAPTURE                          UPVAL U5
       20 NEWCLOSURE                       R9 P4
       21 CAPTURE                          UPVAL U6
       22 CAPTURE                          VAL R2
       23 CAPTURE                          VAL R6
       24 NAMECALL                         R7 R0 K0 ["Connect"]
       26 CALL                             R7 2 1
       27 NEWCLOSURE                       R8 P5
       28 CAPTURE                          VAL R2
       29 NEWCLOSURE                       R9 P6
       30 CAPTURE                          VAL R2
       31 CAPTURE                          VAL R1
       32 CAPTURE                          VAL R5
       33 CAPTURE                          UPVAL U5
       34 NEWCLOSURE                       R10 P7
       35 CAPTURE                          VAL R2
       36 CAPTURE                          VAL R1
       37 CAPTURE                          VAL R5
       38 CAPTURE                          UPVAL U4
       39 CAPTURE                          UPVAL U5
       40 NEWCLOSURE                       R11 P8
       41 CAPTURE                          VAL R1
       42 CAPTURE                          UPVAL U2
       43 CAPTURE                          UPVAL U7
       44 CAPTURE                          UPVAL U4
       45 NEWCLOSURE                       R12 P9
       46 CAPTURE                          VAL R2
       47 CAPTURE                          VAL R1
       48 CAPTURE                          VAL R11
       49 NEWCLOSURE                       R13 P10
       50 CAPTURE                          VAL R2
       51 CAPTURE                          VAL R1
       52 CAPTURE                          UPVAL U8
       53 CAPTURE                          UPVAL U4
       54 NEWCLOSURE                       R14 P11
       55 CAPTURE                          VAL R2
       56 CAPTURE                          UPVAL U0
       57 NEWCLOSURE                       R15 P12
       58 CAPTURE                          VAL R7
       59 CAPTURE                          VAL R2
       60 CAPTURE                          UPVAL U0
       61 DUPTABLE                         R16 K8 [{"setAnimation", "setIsPlaying", "setCurrentTime", "swapPlayingSequence", "refreshR6BlendWeights", "removeAnimation", "destroy"}]
       62 SETTABLEKS                       R8 R16 K1 ["setAnimation"]
       64 SETTABLEKS                       R9 R16 K2 ["setIsPlaying"]
       66 SETTABLEKS                       R10 R16 K3 ["setCurrentTime"]
       68 SETTABLEKS                       R12 R16 K4 ["swapPlayingSequence"]
       70 SETTABLEKS                       R13 R16 K5 ["refreshR6BlendWeights"]
       72 SETTABLEKS                       R14 R16 K6 ["removeAnimation"]
       74 SETTABLEKS                       R15 R16 K7 ["destroy"]
       76 RETURN                           R16 1

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
       49 GETTABLEKS                       R8 R8 K18 ["BlendSettings"]
       51 CALL                             R7 1 1
       52 GETIMPORT                        R8 K12 [require]
       54 GETTABLEKS                       R9 R4 K16 ["Util"]
       56 GETTABLEKS                       R9 R9 K17 ["AnimationGen"]
       58 GETTABLEKS                       R9 R9 K19 ["HostTypes"]
       60 CALL                             R8 1 1
       61 GETIMPORT                        R9 K12 [require]
       63 GETTABLEKS                       R10 R4 K16 ["Util"]
       65 GETTABLEKS                       R10 R10 K17 ["AnimationGen"]
       67 GETTABLEKS                       R10 R10 K20 ["PlaybackTracks"]
       69 CALL                             R9 1 1
       70 GETIMPORT                        R10 K12 [require]
       72 GETTABLEKS                       R11 R4 K21 ["Types"]
       74 CALL                             R10 1 1
       75 GETIMPORT                        R11 K12 [require]
       77 GETTABLEKS                       R12 R4 K16 ["Util"]
       79 GETTABLEKS                       R12 R12 K17 ["AnimationGen"]
       81 GETTABLEKS                       R12 R12 K22 ["clearAnimationPose"]
       83 CALL                             R11 1 1
       84 GETIMPORT                        R12 K12 [require]
       86 GETTABLEKS                       R13 R4 K16 ["Util"]
       88 GETTABLEKS                       R13 R13 K17 ["AnimationGen"]
       90 GETTABLEKS                       R13 R13 K23 ["createR6BlendTracks"]
       92 CALL                             R12 1 1
       93 GETIMPORT                        R13 K12 [require]
       95 GETTABLEKS                       R14 R4 K16 ["Util"]
       97 GETTABLEKS                       R14 R14 K17 ["AnimationGen"]
       99 GETTABLEKS                       R14 R14 K24 ["isRigInWorkspace"]
      101 CALL                             R13 1 1
      102 DUPCLOSURE                       R14 K25 [PROTO_0]
      103 CAPTURE                          VAL R6
      104 CAPTURE                          VAL R2
      105 DUPCLOSURE                       R15 K26 [PROTO_1]
      106 DUPCLOSURE                       R16 K27 [PROTO_2]
      107 DUPCLOSURE                       R17 K28 [PROTO_3]
      108 CAPTURE                          VAL R11
      109 DUPCLOSURE                       R18 K29 [PROTO_4]
      110 CAPTURE                          VAL R11
      111 DUPCLOSURE                       R19 K30 [PROTO_5]
      112 CAPTURE                          VAL R1
      113 DUPCLOSURE                       R20 K31 [PROTO_7]
      114 DUPCLOSURE                       R21 K32 [PROTO_8]
      115 CAPTURE                          VAL R20
      116 CAPTURE                          VAL R1
      117 DUPCLOSURE                       R22 K33 [PROTO_10]
      118 CAPTURE                          VAL R1
      119 CAPTURE                          VAL R0
      120 CAPTURE                          VAL R20
      121 DUPCLOSURE                       R23 K34 [PROTO_12]
      122 CAPTURE                          VAL R7
      123 CAPTURE                          VAL R12
      124 CAPTURE                          VAL R9
      125 DUPCLOSURE                       R24 K35 [PROTO_13]
      126 CAPTURE                          VAL R3
      127 DUPCLOSURE                       R25 K36 [PROTO_14]
      128 CAPTURE                          VAL R3
      129 DUPCLOSURE                       R26 K37 [PROTO_16]
      130 CAPTURE                          VAL R3
      131 DUPCLOSURE                       R27 K38 [PROTO_32]
      132 CAPTURE                          VAL R11
      133 CAPTURE                          VAL R14
      134 CAPTURE                          VAL R23
      135 CAPTURE                          VAL R21
      136 CAPTURE                          VAL R3
      137 CAPTURE                          VAL R26
      138 CAPTURE                          VAL R13
      139 CAPTURE                          VAL R22
      140 CAPTURE                          VAL R7
      141 RETURN                           R27 1
