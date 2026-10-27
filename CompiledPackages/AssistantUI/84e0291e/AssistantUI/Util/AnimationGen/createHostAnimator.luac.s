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
       27 LOADB                            R4 0
       28 SETTABLEKS                       R4 R3 K10 ["Archivable"]
       30 SETTABLEKS                       R0 R3 K11 ["Parent"]
       32 RETURN                           R3 1

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
       12 GETTABLEKS                       R1 R0 K0 ["loadedAnimation"]
       14 GETTABLEKS                       R1 R1 K3 ["tracks"]
       16 GETTABLEKS                       R1 R1 K4 ["destroy"]
       18 CALL                             R1 0 0
       19 GETUPVAL                         R1 0
       20 GETTABLEKS                       R2 R0 K0 ["loadedAnimation"]
       22 GETTABLEKS                       R2 R2 K5 ["animator"]
       24 CALL                             R1 1 0
       25 LOADNIL                          R1
       26 SETTABLEKS                       R1 R0 K0 ["loadedAnimation"]
       28 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["loadedAnimation"]
        2 JUMPIFNOTEQKNIL                  R1 ; [+2]
        4 JUMP                             ; [+23]
        5 GETTABLEKS                       R1 R0 K0 ["loadedAnimation"]
        7 GETTABLEKS                       R1 R1 K1 ["ancestryChangedConnection"]
        9 NAMECALL                         R1 R1 K2 ["Disconnect"]
       11 CALL                             R1 1 0
       12 GETTABLEKS                       R1 R0 K0 ["loadedAnimation"]
       14 GETTABLEKS                       R1 R1 K3 ["tracks"]
       16 GETTABLEKS                       R1 R1 K4 ["destroy"]
       18 CALL                             R1 0 0
       19 GETUPVAL                         R1 0
       20 GETTABLEKS                       R2 R0 K0 ["loadedAnimation"]
       22 GETTABLEKS                       R2 R2 K5 ["animator"]
       24 CALL                             R1 1 0
       25 LOADNIL                          R1
       26 SETTABLEKS                       R1 R0 K0 ["loadedAnimation"]
       28 GETTABLEKS                       R1 R0 K6 ["renderSteppedConnection"]
       30 JUMPIFEQKNIL                     R1 ; [+9]
       32 GETTABLEKS                       R1 R0 K6 ["renderSteppedConnection"]
       34 NAMECALL                         R1 R1 K2 ["Disconnect"]
       36 CALL                             R1 1 0
       37 LOADNIL                          R1
       38 SETTABLEKS                       R1 R0 K6 ["renderSteppedConnection"]
       40 LOADB                            R1 0
       41 SETTABLEKS                       R1 R0 K7 ["isPlaying"]
       43 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R2 R0 K0 ["loadedAnimation"]
        2 JUMPIFNOTEQKNIL                  R2 ; [+2]
        4 RETURN                           R0 0
        5 JUMPIFEQKNIL                     R1 ; [+3]
        7 MOVE                             R3 R1
        8 JUMP                             ; [+2]
        9 GETTABLEKS                       R3 R0 K1 ["currentTime"]
       11 GETTABLEKS                       R4 R2 K2 ["tracks"]
       13 GETTABLEKS                       R4 R4 K3 ["seek"]
       15 MOVE                             R5 R3
       16 CALL                             R4 1 0
       17 GETUPVAL                         R4 0
       18 GETTABLEKS                       R5 R2 K4 ["animator"]
       20 LOADN                            R6 0
       21 GETTABLEKS                       R7 R2 K5 ["retargetingEnabled"]
       23 CALL                             R4 3 0
       24 RETURN                           R0 0

PROTO_6:
        0 GETIMPORT                        R3 K3 [os.clock]
        2 CALL                             R3 0 1
        3 ADDK                             R2 R3 K0 [0.5]
        4 GETTABLEKS                       R3 R0 K4 ["loadedAnimation"]
        6 JUMPIFNOTEQKNIL                  R3 ; [+2]
        8 JUMP                             ; [+19]
        9 JUMPIFEQKNIL                     R1 ; [+3]
       11 MOVE                             R4 R1
       12 JUMP                             ; [+2]
       13 GETTABLEKS                       R4 R0 K5 ["currentTime"]
       15 GETTABLEKS                       R5 R3 K6 ["tracks"]
       17 GETTABLEKS                       R5 R5 K7 ["seek"]
       19 MOVE                             R6 R4
       20 CALL                             R5 1 0
       21 GETUPVAL                         R5 0
       22 GETTABLEKS                       R6 R3 K8 ["animator"]
       24 LOADN                            R7 0
       25 GETTABLEKS                       R8 R3 K9 ["retargetingEnabled"]
       27 CALL                             R5 3 0
       28 GETTABLEKS                       R3 R0 K4 ["loadedAnimation"]
       30 JUMPIFNOTEQKNIL                  R3 ; [+2]
       32 RETURN                           R0 0
       33 GETTABLEKS                       R4 R3 K6 ["tracks"]
       35 GETTABLEKS                       R4 R4 K10 ["primaryTrack"]
       37 GETTABLEKS                       R5 R4 K11 ["Length"]
       39 LOADN                            R6 0
       40 JUMPIFNOTLT                      R6 R5 ; [+30]
       42 JUMPIFEQKNIL                     R1 ; [+3]
       44 MOVE                             R6 R1
       45 JUMP                             ; [+2]
       46 GETTABLEKS                       R6 R0 K5 ["currentTime"]
       48 GETTABLEKS                       R8 R4 K12 ["Looped"]
       50 JUMPIFNOT                        R8 ; [+2]
       51 MOD                              R7 R6 R5
       52 JUMP                             ; [+7]
       53 FASTCALL2                        MATH_MIN R6 R5 ; [+5]
       55 MOVE                             R8 R6
       56 MOVE                             R9 R5
       57 GETIMPORT                        R7 K15 [math.min]
       59 CALL                             R7 2 1
       60 GETTABLEKS                       R10 R4 K16 ["TimePosition"]
       62 SUB                              R9 R10 R7
       63 FASTCALL1                        MATH_ABS R9 ; [+2]
       64 GETIMPORT                        R8 K18 [math.abs]
       66 CALL                             R8 1 1
       67 LOADK                            R9 K19 [0.001]
       68 JUMPIFNOTLT                      R8 R9 ; [+2]
       70 RETURN                           R0 0
       71 GETUPVAL                         R6 1
       72 GETTABLEKS                       R6 R6 K20 ["RenderStepped"]
       74 NAMECALL                         R6 R6 K21 ["Wait"]
       76 CALL                             R6 1 0
       77 GETIMPORT                        R6 K3 [os.clock]
       79 CALL                             R6 0 1
       80 JUMPIFLE                         R2 R6 ; [+2]
       82 JUMPBACK                         ; [-79]
       83 RETURN                           R0 0

PROTO_7:
        0 JUMPIFNOTEQKNIL                  R0 ; [+2]
        2 RETURN                           R0 0
        3 LOADK                            R3 K0 ["Humanoid"]
        4 NAMECALL                         R1 R0 K1 ["FindFirstChildOfClass"]
        6 CALL                             R1 2 1
        7 JUMPIF                           R1 ; [+4]
        8 LOADK                            R3 K2 ["AnimationController"]
        9 NAMECALL                         R1 R0 K1 ["FindFirstChildOfClass"]
       11 CALL                             R1 2 1
       12 JUMPIFNOTEQKNIL                  R1 ; [+2]
       14 RETURN                           R0 0
       15 LOADK                            R4 K3 ["Animator"]
       16 NAMECALL                         R2 R1 K1 ["FindFirstChildOfClass"]
       18 CALL                             R2 2 1
       19 JUMPIFNOT                        R2 ; [+3]
       20 GETUPVAL                         R3 0
       21 MOVE                             R4 R2
       22 CALL                             R3 1 0
       23 RETURN                           R0 0

PROTO_8:
        0 LOADB                            R1 0
        1 GETTABLEKS                       R2 R0 K0 ["useEditPreview"]
        3 JUMPIFNOTEQKB                    R2 TRUE ; [+9]
        5 GETTABLEKS                       R2 R0 K1 ["cache"]
        7 GETTABLEKS                       R2 R2 K2 ["editPreviewSequence"]
        9 JUMPIFNOTEQKNIL                  R2 ; [+2]
       11 LOADB                            R1 0 +1
       12 LOADB                            R1 1
       13 RETURN                           R1 1

PROTO_9:
        0 LOADB                            R1 0
        1 GETTABLEKS                       R2 R0 K0 ["useEditPreview"]
        3 JUMPIFNOTEQKB                    R2 TRUE ; [+9]
        5 GETTABLEKS                       R2 R0 K1 ["cache"]
        7 GETTABLEKS                       R2 R2 K2 ["editPreviewSequence"]
        9 JUMPIFNOTEQKNIL                  R2 ; [+2]
       11 LOADB                            R1 0 +1
       12 LOADB                            R1 1
       13 JUMPIFNOT                        R1 ; [+5]
       14 GETTABLEKS                       R1 R0 K1 ["cache"]
       16 GETTABLEKS                       R1 R1 K2 ["editPreviewSequence"]
       18 RETURN                           R1 1
       19 GETUPVAL                         R1 0
       20 GETTABLEKS                       R1 R1 K3 ["resolveSequence"]
       22 MOVE                             R2 R0
       23 CALL                             R1 1 -1
       24 RETURN                           R1 -1

PROTO_10:
        0 GETTABLEKS                       R2 R0 K0 ["isUpscale"]
        2 JUMPIF                           R2 ; [+2]
        3 LOADB                            R2 1
        4 RETURN                           R2 1
        5 GETUPVAL                         R3 0
        6 MOVE                             R4 R1
        7 CALL                             R3 1 1
        8 NOT                              R2 R3
        9 RETURN                           R2 1

PROTO_11:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["LoadAnimation"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_12:
        0 GETIMPORT                        R2 K2 [Instance.new]
        2 LOADK                            R3 K3 ["Animation"]
        3 CALL                             R2 1 1
        4 GETUPVAL                         R3 0
        5 MOVE                             R5 R1
        6 NAMECALL                         R3 R3 K4 ["RegisterActiveAnimationClip"]
        8 CALL                             R3 2 1
        9 SETTABLEKS                       R3 R2 K5 ["AnimationId"]
       11 GETIMPORT                        R3 K7 [pcall]
       13 NEWCLOSURE                       R4 P0
       14 CAPTURE                          VAL R0
       15 CAPTURE                          VAL R2
       16 CALL                             R3 1 2
       17 NAMECALL                         R5 R2 K8 ["Destroy"]
       19 CALL                             R5 1 0
       20 JUMPIF                           R3 ; [+7]
       21 LOADNIL                          R5
       22 FASTCALL1                        TOSTRING R4 ; [+3]
       23 MOVE                             R7 R4
       24 GETIMPORT                        R6 K10 [tostring]
       26 CALL                             R6 1 1
       27 RETURN                           R5 2
       28 MOVE                             R5 R4
       29 LOADNIL                          R6
       30 RETURN                           R5 2

PROTO_13:
        0 GETTABLEKS                       R3 R1 K0 ["play"]
        2 CALL                             R3 0 0
        3 GETTABLEKS                       R3 R1 K1 ["needsWarmUpStep"]
        5 JUMPIFNOT                        R3 ; [+5]
        6 GETUPVAL                         R3 0
        7 MOVE                             R4 R0
        8 LOADK                            R5 K2 [0.016666666666666666]
        9 MOVE                             R6 R2
       10 CALL                             R3 3 0
       11 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R1 2 1
        4 RETURN                           R1 1

PROTO_15:
        0 GETTABLEKS                       R3 R1 K0 ["blendRigidSequence"]
        2 JUMPIFEQKNIL                     R3 ; [+30]
        4 GETUPVAL                         R4 0
        5 GETTABLEKS                       R4 R4 K1 ["aiGeneratedWeights"]
        7 GETTABLEKS                       R5 R1 K2 ["settings"]
        9 JUMPIFNOT                        R5 ; [+4]
       10 GETTABLEKS                       R5 R1 K2 ["settings"]
       12 GETTABLEKS                       R5 R5 K3 ["blend"]
       14 CALL                             R4 1 2
       15 GETUPVAL                         R6 1
       16 MOVE                             R7 R3
       17 MOVE                             R8 R2
       18 NEWCLOSURE                       R9 P0
       19 CAPTURE                          UPVAL U2
       20 CAPTURE                          VAL R0
       21 MOVE                             R10 R4
       22 MOVE                             R11 R5
       23 CALL                             R6 5 1
       24 JUMPIFEQKNIL                     R6 ; [+4]
       26 MOVE                             R7 R6
       27 LOADNIL                          R8
       28 RETURN                           R7 2
       29 GETIMPORT                        R7 K5 [warn]
       31 LOADK                            R8 K6 ["[AnimationGen] Upper/lower blend tracks could not load; playing the unblended clip"]
       32 CALL                             R7 1 0
       33 GETUPVAL                         R4 2
       34 MOVE                             R5 R0
       35 MOVE                             R6 R2
       36 CALL                             R4 2 2
       37 JUMPIFNOTEQKNIL                  R4 ; [+4]
       39 LOADNIL                          R6
       40 MOVE                             R7 R5
       41 RETURN                           R6 2
       42 GETUPVAL                         R6 3
       43 GETTABLEKS                       R6 R6 K7 ["single"]
       45 MOVE                             R7 R4
       46 CALL                             R6 1 1
       47 LOADNIL                          R7
       48 RETURN                           R6 2

PROTO_16:
        0 GETTABLEKS                       R2 R0 K0 ["tracks"]
        2 GETTABLEKS                       R2 R2 K1 ["setR6BlendWeights"]
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R3 R3 K2 ["aiGeneratedWeights"]
        7 GETTABLEKS                       R4 R1 K3 ["settings"]
        9 JUMPIFNOT                        R4 ; [+4]
       10 GETTABLEKS                       R4 R1 K3 ["settings"]
       12 GETTABLEKS                       R4 R4 K4 ["blend"]
       14 CALL                             R3 1 -1
       15 CALL                             R2 -1 0
       16 RETURN                           R0 0

PROTO_17:
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
       18 GETTABLEKS                       R2 R0 K3 ["currentTime"]
       20 GETTABLEKS                       R3 R1 K5 ["tracks"]
       22 GETTABLEKS                       R3 R3 K6 ["seek"]
       24 MOVE                             R4 R2
       25 CALL                             R3 1 0
       26 GETUPVAL                         R3 4
       27 GETTABLEKS                       R4 R1 K7 ["animator"]
       29 LOADN                            R5 0
       30 GETTABLEKS                       R6 R1 K8 ["retargetingEnabled"]
       32 CALL                             R3 3 0
       33 RETURN                           R0 0

PROTO_18:
        0 GETTABLEKS                       R2 R0 K0 ["renderSteppedConnection"]
        2 JUMPIFEQKNIL                     R2 ; [+9]
        4 GETTABLEKS                       R2 R0 K0 ["renderSteppedConnection"]
        6 NAMECALL                         R2 R2 K1 ["Disconnect"]
        8 CALL                             R2 1 0
        9 LOADNIL                          R2
       10 SETTABLEKS                       R2 R0 K0 ["renderSteppedConnection"]
       12 LOADB                            R2 0
       13 SETTABLEKS                       R2 R0 K2 ["isPlaying"]
       15 GETTABLEKS                       R2 R1 K3 ["keyframeSequence"]
       17 JUMPIFEQKNIL                     R2 ; [+9]
       19 GETTABLEKS                       R3 R2 K4 ["Length"]
       21 JUMPIFEQKN                       R3 K5 [0] ; [+5]
       23 GETTABLEKS                       R3 R0 K6 ["loadedAnimation"]
       25 JUMPIFNOTEQKNIL                  R3 ; [+2]
       27 RETURN                           R0 0
       28 LOADB                            R3 1
       29 SETTABLEKS                       R3 R0 K2 ["isPlaying"]
       31 GETTABLEKS                       R3 R2 K4 ["Length"]
       33 GETTABLEKS                       R4 R0 K7 ["currentTime"]
       35 GETIMPORT                        R5 K10 [os.clock]
       37 CALL                             R5 0 1
       38 NEWCLOSURE                       R6 P0
       39 CAPTURE                          VAL R0
       40 CAPTURE                          VAL R4
       41 CAPTURE                          VAL R5
       42 CAPTURE                          VAL R3
       43 CAPTURE                          UPVAL U0
       44 GETUPVAL                         R7 1
       45 GETTABLEKS                       R7 R7 K11 ["RenderStepped"]
       47 MOVE                             R9 R6
       48 NAMECALL                         R7 R7 K12 ["Connect"]
       50 CALL                             R7 2 1
       51 SETTABLEKS                       R7 R0 K0 ["renderSteppedConnection"]
       53 GETIMPORT                        R10 K10 [os.clock]
       55 CALL                             R10 0 1
       56 ADD                              R9 R4 R10
       57 SUB                              R8 R9 R5
       58 MOD                              R7 R8 R3
       59 SETTABLEKS                       R7 R0 K7 ["currentTime"]
       61 GETTABLEKS                       R7 R0 K6 ["loadedAnimation"]
       63 JUMPIFNOTEQKNIL                  R7 ; [+2]
       65 RETURN                           R0 0
       66 GETTABLEKS                       R8 R0 K7 ["currentTime"]
       68 GETTABLEKS                       R9 R7 K13 ["tracks"]
       70 GETTABLEKS                       R9 R9 K14 ["seek"]
       72 MOVE                             R10 R8
       73 CALL                             R9 1 0
       74 GETUPVAL                         R9 0
       75 GETTABLEKS                       R10 R7 K15 ["animator"]
       77 LOADN                            R11 0
       78 GETTABLEKS                       R12 R7 K16 ["retargetingEnabled"]
       80 CALL                             R9 3 0
       81 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R1 0
        1 ADDK                             R1 R1 K0 [1]
        2 SETUPVAL                         R1 0
        3 GETUPVAL                         R2 1
        4 GETTABLE                         R1 R2 R0
        5 GETUPVAL                         R3 2
        6 GETTABLE                         R2 R3 R0
        7 JUMPIFEQKNIL                     R2 ; [+4]
        9 GETTABLEKS                       R3 R2 K1 ["keyframeSequence"]
       11 JUMP                             ; [+1]
       12 LOADNIL                          R3
       13 JUMPIFEQKNIL                     R3 ; [+4]
       15 GETTABLEKS                       R4 R3 K2 ["Length"]
       17 JUMP                             ; [+1]
       18 LOADN                            R4 0
       19 JUMPIFNOTEQKN                    R4 K3 [0] ; [+11]
       21 JUMPIFEQKNIL                     R2 ; [+9]
       23 GETTABLEKS                       R5 R2 K4 ["undoSafeKeyframeSequence"]
       25 JUMPIFEQKNIL                     R5 ; [+5]
       27 GETTABLEKS                       R5 R2 K4 ["undoSafeKeyframeSequence"]
       29 GETTABLEKS                       R4 R5 K2 ["Length"]
       31 DUPTABLE                         R5 K10 [{"revision", "available", "isPlaying", "currentTime", "duration"}]
       32 GETUPVAL                         R6 0
       33 SETTABLEKS                       R6 R5 K5 ["revision"]
       35 LOADB                            R6 0
       36 JUMPIFEQKNIL                     R1 ; [+5]
       38 JUMPIFNOTEQKNIL                  R3 ; [+2]
       40 LOADB                            R6 0 +1
       41 LOADB                            R6 1
       42 SETTABLEKS                       R6 R5 K6 ["available"]
       44 LOADB                            R6 0
       45 JUMPIFEQKNIL                     R1 ; [+3]
       47 GETTABLEKS                       R6 R1 K7 ["isPlaying"]
       49 SETTABLEKS                       R6 R5 K7 ["isPlaying"]
       51 JUMPIFEQKNIL                     R1 ; [+4]
       53 GETTABLEKS                       R6 R1 K8 ["currentTime"]
       55 JUMP                             ; [+1]
       56 LOADN                            R6 0
       57 SETTABLEKS                       R6 R5 K8 ["currentTime"]
       59 SETTABLEKS                       R4 R5 K9 ["duration"]
       61 RETURN                           R5 1

PROTO_20:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 JUMPIFEQKNIL                     R1 ; [+11]
        4 GETTABLEKS                       R2 R1 K0 ["playbackStateChanged"]
        6 JUMPIFEQKNIL                     R2 ; [+7]
        8 GETTABLEKS                       R2 R1 K0 ["playbackStateChanged"]
       10 GETUPVAL                         R3 1
       11 MOVE                             R4 R0
       12 CALL                             R3 1 1
       13 CALL                             R2 1 0
       14 RETURN                           R0 0

PROTO_21:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 RETURN                           R0 0

PROTO_22:
        0 GETIMPORT                        R2 K1 [pcall]
        2 NEWCLOSURE                       R3 P0
        3 CAPTURE                          VAL R1
        4 CALL                             R2 1 2
        5 JUMPIF                           R2 ; [+19]
        6 GETUPVAL                         R5 0
        7 GETTABLE                         R4 R5 R0
        8 JUMPIFEQKNIL                     R4 ; [+16]
       10 GETTABLEKS                       R5 R4 K2 ["renderSteppedConnection"]
       12 JUMPIFEQKNIL                     R5 ; [+9]
       14 GETTABLEKS                       R5 R4 K2 ["renderSteppedConnection"]
       16 NAMECALL                         R5 R5 K3 ["Disconnect"]
       18 CALL                             R5 1 0
       19 LOADNIL                          R5
       20 SETTABLEKS                       R5 R4 K2 ["renderSteppedConnection"]
       22 LOADB                            R5 0
       23 SETTABLEKS                       R5 R4 K4 ["isPlaying"]
       25 GETUPVAL                         R5 1
       26 GETTABLE                         R4 R5 R0
       27 JUMPIFEQKNIL                     R4 ; [+11]
       29 GETTABLEKS                       R5 R4 K5 ["playbackStateChanged"]
       31 JUMPIFEQKNIL                     R5 ; [+7]
       33 GETTABLEKS                       R5 R4 K5 ["playbackStateChanged"]
       35 GETUPVAL                         R6 2
       36 MOVE                             R7 R0
       37 CALL                             R6 1 1
       38 CALL                             R5 1 0
       39 JUMPIF                           R2 ; [+5]
       40 GETIMPORT                        R4 K7 [error]
       42 MOVE                             R5 R3
       43 LOADN                            R6 0
       44 CALL                             R4 2 0
       45 RETURN                           R0 0

PROTO_23:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 JUMPIFNOTEQKNIL                  R1 ; [+4]
        4 GETUPVAL                         R1 0
        5 DUPTABLE                         R2 K8 [{[1] = False, ["currentTime"] = 0, ["loadedAnimation"] = , ["loadedUsesPreview"] = False, ["renderSteppedConnection"] = }]
        6 SETTABLE                         R2 R1 R0
        7 RETURN                           R0 0

PROTO_24:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 RETURN                           R1 1

PROTO_25:
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
       16 JUMPIF                           R1 ; [+64]
       17 GETUPVAL                         R1 0
       18 LOADB                            R2 1
       19 SETTABLEKS                       R2 R1 K4 ["needsReload"]
       21 GETUPVAL                         R1 2
       22 GETTABLEKS                       R2 R1 K5 ["loadedAnimation"]
       24 JUMPIFNOTEQKNIL                  R2 ; [+2]
       26 JUMP                             ; [+23]
       27 GETTABLEKS                       R2 R1 K5 ["loadedAnimation"]
       29 GETTABLEKS                       R2 R2 K6 ["ancestryChangedConnection"]
       31 NAMECALL                         R2 R2 K7 ["Disconnect"]
       33 CALL                             R2 1 0
       34 GETTABLEKS                       R2 R1 K5 ["loadedAnimation"]
       36 GETTABLEKS                       R2 R2 K8 ["tracks"]
       38 GETTABLEKS                       R2 R2 K9 ["destroy"]
       40 CALL                             R2 0 0
       41 GETUPVAL                         R2 3
       42 GETTABLEKS                       R3 R1 K5 ["loadedAnimation"]
       44 GETTABLEKS                       R3 R3 K10 ["animator"]
       46 CALL                             R2 1 0
       47 LOADNIL                          R2
       48 SETTABLEKS                       R2 R1 K5 ["loadedAnimation"]
       50 GETUPVAL                         R1 2
       51 GETTABLEKS                       R2 R1 K11 ["renderSteppedConnection"]
       53 JUMPIFEQKNIL                     R2 ; [+9]
       55 GETTABLEKS                       R2 R1 K11 ["renderSteppedConnection"]
       57 NAMECALL                         R2 R2 K7 ["Disconnect"]
       59 CALL                             R2 1 0
       60 LOADNIL                          R2
       61 SETTABLEKS                       R2 R1 K11 ["renderSteppedConnection"]
       63 LOADB                            R2 0
       64 SETTABLEKS                       R2 R1 K12 ["isPlaying"]
       66 GETUPVAL                         R1 4
       67 GETUPVAL                         R3 5
       68 GETTABLE                         R2 R3 R1
       69 JUMPIFEQKNIL                     R2 ; [+11]
       71 GETTABLEKS                       R3 R2 K13 ["playbackStateChanged"]
       73 JUMPIFEQKNIL                     R3 ; [+7]
       75 GETTABLEKS                       R3 R2 K13 ["playbackStateChanged"]
       77 GETUPVAL                         R4 6
       78 MOVE                             R5 R1
       79 CALL                             R4 1 1
       80 CALL                             R3 1 0
       81 RETURN                           R0 0

PROTO_26:
        0 GETUPVAL                         R3 0
        1 GETTABLE                         R2 R3 R0
        2 GETUPVAL                         R4 1
        3 GETTABLE                         R3 R4 R0
        4 GETTABLEKS                       R4 R3 K0 ["rig"]
        6 LOADB                            R6 0
        7 GETTABLEKS                       R7 R3 K1 ["useEditPreview"]
        9 JUMPIFNOTEQKB                    R7 TRUE ; [+9]
       11 GETTABLEKS                       R7 R3 K2 ["cache"]
       13 GETTABLEKS                       R7 R7 K3 ["editPreviewSequence"]
       15 JUMPIFNOTEQKNIL                  R7 ; [+2]
       17 LOADB                            R6 0 +1
       18 LOADB                            R6 1
       19 JUMPIFNOT                        R6 ; [+5]
       20 GETTABLEKS                       R5 R3 K2 ["cache"]
       22 GETTABLEKS                       R5 R5 K3 ["editPreviewSequence"]
       24 JUMP                             ; [+5]
       25 GETUPVAL                         R5 2
       26 GETTABLEKS                       R5 R5 K4 ["resolveSequence"]
       28 MOVE                             R6 R3
       29 CALL                             R5 1 1
       30 JUMPIFEQKNIL                     R4 ; [+3]
       32 JUMPIFNOTEQKNIL                  R5 ; [+2]
       34 RETURN                           R0 0
       35 GETTABLEKS                       R7 R3 K5 ["isUpscale"]
       37 JUMPIF                           R7 ; [+2]
       38 LOADB                            R6 1
       39 JUMP                             ; [+4]
       40 GETUPVAL                         R7 3
       41 MOVE                             R8 R4
       42 CALL                             R7 1 1
       43 NOT                              R6 R7
       44 GETUPVAL                         R7 4
       45 MOVE                             R8 R4
       46 CALL                             R7 1 0
       47 LOADK                            R9 K6 ["Humanoid"]
       48 NAMECALL                         R7 R4 K7 ["FindFirstChildOfClass"]
       50 CALL                             R7 2 1
       51 LOADK                            R10 K8 ["AnimationController"]
       52 NAMECALL                         R8 R4 K7 ["FindFirstChildOfClass"]
       54 CALL                             R8 2 1
       55 OR                               R9 R7 R8
       56 JUMPIFNOTEQKNIL                  R9 ; [+2]
       58 RETURN                           R0 0
       59 GETTABLEKS                       R10 R2 K9 ["loadedAnimation"]
       61 JUMPIFNOTEQKNIL                  R10 ; [+2]
       63 JUMP                             ; [+23]
       64 GETTABLEKS                       R10 R2 K9 ["loadedAnimation"]
       66 GETTABLEKS                       R10 R10 K10 ["ancestryChangedConnection"]
       68 NAMECALL                         R10 R10 K11 ["Disconnect"]
       70 CALL                             R10 1 0
       71 GETTABLEKS                       R10 R2 K9 ["loadedAnimation"]
       73 GETTABLEKS                       R10 R10 K12 ["tracks"]
       75 GETTABLEKS                       R10 R10 K13 ["destroy"]
       77 CALL                             R10 0 0
       78 GETUPVAL                         R10 5
       79 GETTABLEKS                       R11 R2 K9 ["loadedAnimation"]
       81 GETTABLEKS                       R11 R11 K14 ["animator"]
       83 CALL                             R10 1 0
       84 LOADNIL                          R10
       85 SETTABLEKS                       R10 R2 K9 ["loadedAnimation"]
       87 GETTABLEKS                       R11 R1 K15 ["getUniqueId"]
       89 JUMPIFEQKNIL                     R11 ; [+6]
       91 GETTABLEKS                       R10 R1 K15 ["getUniqueId"]
       93 MOVE                             R11 R4
       94 CALL                             R10 1 1
       95 JUMP                             ; [+1]
       96 LOADNIL                          R10
       97 GETUPVAL                         R11 6
       98 MOVE                             R12 R9
       99 MOVE                             R13 R10
      100 CALL                             R11 2 1
      101 GETUPVAL                         R12 7
      102 MOVE                             R13 R11
      103 MOVE                             R14 R3
      104 MOVE                             R15 R5
      105 CALL                             R12 3 2
      106 JUMPIFNOTEQKNIL                  R12 ; [+5]
      108 GETIMPORT                        R14 K17 [error]
      110 MOVE                             R15 R13
      111 CALL                             R14 1 0
      112 GETTABLEKS                       R14 R12 K18 ["play"]
      114 CALL                             R14 0 0
      115 GETTABLEKS                       R14 R12 K19 ["needsWarmUpStep"]
      117 JUMPIFNOT                        R14 ; [+5]
      118 GETUPVAL                         R14 8
      119 MOVE                             R15 R11
      120 LOADK                            R16 K20 [0.016666666666666666]
      121 MOVE                             R17 R6
      122 CALL                             R14 3 0
      123 LOADNIL                          R14
      124 GETTABLEKS                       R15 R11 K21 ["AncestryChanged"]
      126 NEWCLOSURE                       R17 P0
      127 CAPTURE                          VAL R3
      128 CAPTURE                          VAL R11
      129 CAPTURE                          VAL R2
      130 CAPTURE                          UPVAL U5
      131 CAPTURE                          VAL R0
      132 CAPTURE                          UPVAL U9
      133 CAPTURE                          UPVAL U10
      134 NAMECALL                         R15 R15 K22 ["Connect"]
      136 CALL                             R15 2 1
      137 MOVE                             R14 R15
      138 DUPTABLE                         R15 K24 [{"tracks", "animator", "ancestryChangedConnection", "retargetingEnabled"}]
      139 SETTABLEKS                       R12 R15 K12 ["tracks"]
      141 SETTABLEKS                       R11 R15 K14 ["animator"]
      143 SETTABLEKS                       R14 R15 K10 ["ancestryChangedConnection"]
      145 SETTABLEKS                       R6 R15 K23 ["retargetingEnabled"]
      147 SETTABLEKS                       R15 R2 K9 ["loadedAnimation"]
      149 LOADB                            R16 0
      150 GETTABLEKS                       R17 R3 K1 ["useEditPreview"]
      152 JUMPIFNOTEQKB                    R17 TRUE ; [+9]
      154 GETTABLEKS                       R17 R3 K2 ["cache"]
      156 GETTABLEKS                       R17 R17 K3 ["editPreviewSequence"]
      158 JUMPIFNOTEQKNIL                  R17 ; [+2]
      160 LOADB                            R16 0 +1
      161 LOADB                            R16 1
      162 SETTABLEKS                       R16 R2 K25 ["loadedUsesPreview"]
      164 GETTABLEKS                       R16 R15 K12 ["tracks"]
      166 GETTABLEKS                       R16 R16 K26 ["setR6BlendWeights"]
      168 GETUPVAL                         R17 11
      169 GETTABLEKS                       R17 R17 K27 ["aiGeneratedWeights"]
      171 GETTABLEKS                       R18 R3 K28 ["settings"]
      173 JUMPIFNOT                        R18 ; [+4]
      174 GETTABLEKS                       R18 R3 K28 ["settings"]
      176 GETTABLEKS                       R18 R18 K29 ["blend"]
      178 CALL                             R17 1 -1
      179 CALL                             R16 -1 0
      180 LOADB                            R16 0
      181 SETTABLEKS                       R16 R3 K30 ["needsReload"]
      183 RETURN                           R0 0

PROTO_27:
        0 GETUPVAL                         R3 0
        1 GETTABLE                         R2 R3 R0
        2 JUMPIFNOTEQKNIL                  R2 ; [+2]
        4 RETURN                           R0 0
        5 GETUPVAL                         R4 1
        6 GETTABLE                         R3 R4 R0
        7 GETTABLEKS                       R4 R2 K0 ["needsReload"]
        9 JUMPIF                           R4 ; [+6]
       10 JUMPIFEQKNIL                     R3 ; [+10]
       12 GETTABLEKS                       R4 R3 K1 ["loadedAnimation"]
       14 JUMPIFNOTEQKNIL                  R4 ; [+6]
       16 GETUPVAL                         R4 2
       17 MOVE                             R5 R0
       18 MOVE                             R6 R1
       19 CALL                             R4 2 0
       20 RETURN                           R0 0
       21 JUMPIFEQKNIL                     R3 ; [+26]
       23 GETTABLEKS                       R4 R3 K1 ["loadedAnimation"]
       25 JUMPIFEQKNIL                     R4 ; [+22]
       27 GETTABLEKS                       R4 R3 K2 ["loadedUsesPreview"]
       29 LOADB                            R5 0
       30 GETTABLEKS                       R6 R2 K3 ["useEditPreview"]
       32 JUMPIFNOTEQKB                    R6 TRUE ; [+9]
       34 GETTABLEKS                       R6 R2 K4 ["cache"]
       36 GETTABLEKS                       R6 R6 K5 ["editPreviewSequence"]
       38 JUMPIFNOTEQKNIL                  R6 ; [+2]
       40 LOADB                            R5 0 +1
       41 LOADB                            R5 1
       42 JUMPIFEQ                         R4 R5 ; [+5]
       44 GETUPVAL                         R4 3
       45 MOVE                             R5 R3
       46 MOVE                             R6 R0
       47 CALL                             R4 2 0
       48 RETURN                           R0 0

PROTO_28:
        0 GETUPVAL                         R0 0
        1 LOADN                            R1 0
        2 SETTABLEKS                       R1 R0 K0 ["currentTime"]
        4 GETUPVAL                         R0 1
        5 GETUPVAL                         R1 2
        6 GETUPVAL                         R2 3
        7 CALL                             R0 2 0
        8 GETUPVAL                         R0 4
        9 GETUPVAL                         R1 0
       10 GETUPVAL                         R2 5
       11 CALL                             R0 2 0
       12 RETURN                           R0 0

PROTO_29:
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
       15 GETTABLEKS                       R5 R2 K2 ["loadedAnimation"]
       17 JUMPIFNOTEQKNIL                  R5 ; [+2]
       19 JUMP                             ; [+23]
       20 GETTABLEKS                       R5 R2 K2 ["loadedAnimation"]
       22 GETTABLEKS                       R5 R5 K3 ["ancestryChangedConnection"]
       24 NAMECALL                         R5 R5 K4 ["Disconnect"]
       26 CALL                             R5 1 0
       27 GETTABLEKS                       R5 R2 K2 ["loadedAnimation"]
       29 GETTABLEKS                       R5 R5 K5 ["tracks"]
       31 GETTABLEKS                       R5 R5 K6 ["destroy"]
       33 CALL                             R5 0 0
       34 GETUPVAL                         R5 2
       35 GETTABLEKS                       R6 R2 K2 ["loadedAnimation"]
       37 GETTABLEKS                       R6 R6 K7 ["animator"]
       39 CALL                             R5 1 0
       40 LOADNIL                          R5
       41 SETTABLEKS                       R5 R2 K2 ["loadedAnimation"]
       43 GETTABLEKS                       R5 R2 K8 ["renderSteppedConnection"]
       45 JUMPIFEQKNIL                     R5 ; [+9]
       47 GETTABLEKS                       R5 R2 K8 ["renderSteppedConnection"]
       49 NAMECALL                         R5 R5 K4 ["Disconnect"]
       51 CALL                             R5 1 0
       52 LOADNIL                          R5
       53 SETTABLEKS                       R5 R2 K8 ["renderSteppedConnection"]
       55 LOADB                            R5 0
       56 SETTABLEKS                       R5 R2 K1 ["isPlaying"]
       58 GETTABLEKS                       R5 R3 K0 ["rig"]
       60 JUMPIFNOTEQKNIL                  R5 ; [+2]
       62 JUMP                             ; [+20]
       63 LOADK                            R8 K9 ["Humanoid"]
       64 NAMECALL                         R6 R5 K10 ["FindFirstChildOfClass"]
       66 CALL                             R6 2 1
       67 JUMPIF                           R6 ; [+4]
       68 LOADK                            R8 K11 ["AnimationController"]
       69 NAMECALL                         R6 R5 K10 ["FindFirstChildOfClass"]
       71 CALL                             R6 2 1
       72 JUMPIFNOTEQKNIL                  R6 ; [+2]
       74 JUMP                             ; [+8]
       75 LOADK                            R9 K12 ["Animator"]
       76 NAMECALL                         R7 R6 K10 ["FindFirstChildOfClass"]
       78 CALL                             R7 2 1
       79 JUMPIFNOT                        R7 ; [+3]
       80 GETUPVAL                         R8 2
       81 MOVE                             R9 R7
       82 CALL                             R8 1 0
       83 SETTABLEKS                       R1 R3 K0 ["rig"]
       85 LOADB                            R5 1
       86 SETTABLEKS                       R5 R3 K13 ["needsReload"]
       88 GETUPVAL                         R5 3
       89 MOVE                             R7 R0
       90 MOVE                             R8 R1
       91 NAMECALL                         R5 R5 K14 ["Fire"]
       93 CALL                             R5 3 0
       94 JUMPIF                           R4 ; [+1]
       95 RETURN                           R0 0
       96 GETUPVAL                         R6 4
       97 GETTABLE                         R5 R6 R0
       98 JUMPIFNOTEQKNIL                  R5 ; [+2]
      100 RETURN                           R0 0
      101 GETUPVAL                         R6 5
      102 MOVE                             R7 R0
      103 NEWCLOSURE                       R8 P0
      104 CAPTURE                          VAL R2
      105 CAPTURE                          UPVAL U6
      106 CAPTURE                          VAL R0
      107 CAPTURE                          VAL R5
      108 CAPTURE                          UPVAL U7
      109 CAPTURE                          VAL R3
      110 CALL                             R6 2 0
      111 RETURN                           R0 0

PROTO_30:
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

PROTO_31:
        0 GETTABLEKS                       R1 R0 K0 ["id"]
        2 GETUPVAL                         R3 0
        3 GETTABLE                         R2 R3 R1
        4 JUMPIFNOTEQKNIL                  R2 ; [+4]
        6 GETUPVAL                         R2 0
        7 DUPTABLE                         R3 K9 [{["isPlaying"] = False, ["currentTime"] = 0, ["loadedAnimation"] = , ["loadedUsesPreview"] = False, ["renderSteppedConnection"] = }]
        8 SETTABLE                         R3 R2 R1
        9 GETUPVAL                         R2 1
       10 SETTABLE                         R0 R2 R1
       11 GETUPVAL                         R3 1
       12 GETTABLE                         R2 R3 R1
       13 JUMPIFEQKNIL                     R2 ; [+11]
       15 GETTABLEKS                       R3 R2 K10 ["playbackStateChanged"]
       17 JUMPIFEQKNIL                     R3 ; [+7]
       19 GETTABLEKS                       R3 R2 K10 ["playbackStateChanged"]
       21 GETUPVAL                         R4 2
       22 MOVE                             R5 R1
       23 CALL                             R4 1 1
       24 CALL                             R3 1 0
       25 RETURN                           R0 0

PROTO_32:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLE                         R0 R2 R1
        3 GETTABLEKS                       R1 R0 K0 ["renderSteppedConnection"]
        5 JUMPIFEQKNIL                     R1 ; [+9]
        7 GETTABLEKS                       R1 R0 K0 ["renderSteppedConnection"]
        9 NAMECALL                         R1 R1 K1 ["Disconnect"]
       11 CALL                             R1 1 0
       12 LOADNIL                          R1
       13 SETTABLEKS                       R1 R0 K0 ["renderSteppedConnection"]
       15 LOADB                            R1 0
       16 SETTABLEKS                       R1 R0 K2 ["isPlaying"]
       18 LOADN                            R1 0
       19 SETTABLEKS                       R1 R0 K3 ["currentTime"]
       21 GETUPVAL                         R1 2
       22 GETUPVAL                         R2 0
       23 GETUPVAL                         R3 3
       24 CALL                             R1 2 0
       25 GETUPVAL                         R1 4
       26 MOVE                             R2 R0
       27 CALL                             R1 1 0
       28 GETUPVAL                         R2 5
       29 GETUPVAL                         R3 0
       30 GETTABLE                         R1 R2 R3
       31 GETUPVAL                         R3 1
       32 GETUPVAL                         R4 0
       33 GETTABLE                         R2 R3 R4
       34 JUMPIFNOTEQ                      R2 R0 ; [+3]
       36 JUMPIFNOTEQKNIL                  R1 ; [+2]
       38 RETURN                           R0 0
       39 GETUPVAL                         R2 6
       40 MOVE                             R3 R0
       41 MOVE                             R4 R1
       42 CALL                             R2 2 0
       43 RETURN                           R0 0

PROTO_33:
        0 GETTABLEKS                       R1 R0 K0 ["id"]
        2 GETUPVAL                         R2 0
        3 MOVE                             R3 R1
        4 NEWCLOSURE                       R4 P0
        5 CAPTURE                          VAL R1
        6 CAPTURE                          UPVAL U1
        7 CAPTURE                          UPVAL U2
        8 CAPTURE                          VAL R0
        9 CAPTURE                          UPVAL U3
       10 CAPTURE                          UPVAL U4
       11 CAPTURE                          UPVAL U5
       12 CALL                             R2 2 0
       13 RETURN                           R0 0

PROTO_34:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLE                         R0 R2 R1
        3 GETUPVAL                         R2 2
        4 GETUPVAL                         R3 0
        5 GETTABLE                         R1 R2 R3
        6 GETUPVAL                         R2 3
        7 JUMPIFNOT                        R2 ; [+9]
        8 GETUPVAL                         R2 4
        9 GETUPVAL                         R3 0
       10 GETUPVAL                         R4 5
       11 CALL                             R2 2 0
       12 GETUPVAL                         R2 6
       13 MOVE                             R3 R0
       14 MOVE                             R4 R1
       15 CALL                             R2 2 0
       16 RETURN                           R0 0
       17 GETTABLEKS                       R2 R0 K0 ["renderSteppedConnection"]
       19 JUMPIFEQKNIL                     R2 ; [+9]
       21 GETTABLEKS                       R2 R0 K0 ["renderSteppedConnection"]
       23 NAMECALL                         R2 R2 K1 ["Disconnect"]
       25 CALL                             R2 1 0
       26 LOADNIL                          R2
       27 SETTABLEKS                       R2 R0 K0 ["renderSteppedConnection"]
       29 LOADB                            R2 0
       30 SETTABLEKS                       R2 R0 K2 ["isPlaying"]
       32 RETURN                           R0 0

PROTO_35:
        0 GETTABLEKS                       R2 R1 K0 ["id"]
        2 GETUPVAL                         R3 0
        3 MOVE                             R4 R2
        4 NEWCLOSURE                       R5 P0
        5 CAPTURE                          VAL R2
        6 CAPTURE                          UPVAL U1
        7 CAPTURE                          UPVAL U2
        8 CAPTURE                          VAL R0
        9 CAPTURE                          UPVAL U3
       10 CAPTURE                          VAL R1
       11 CAPTURE                          UPVAL U4
       12 CALL                             R3 2 0
       13 RETURN                           R0 0

PROTO_36:
        0 GETTABLEKS                       R3 R0 K0 ["id"]
        2 GETUPVAL                         R4 0
        3 GETTABLE                         R2 R4 R3
        4 GETTABLEKS                       R4 R2 K1 ["loadedAnimation"]
        6 JUMPIFEQKNIL                     R4 ; [+8]
        8 GETTABLEKS                       R3 R2 K1 ["loadedAnimation"]
       10 GETTABLEKS                       R3 R3 K2 ["tracks"]
       12 GETTABLEKS                       R3 R3 K3 ["primaryTrack"]
       14 JUMP                             ; [+1]
       15 LOADNIL                          R3
       16 GETUPVAL                         R4 1
       17 GETTABLEKS                       R5 R0 K0 ["id"]
       19 MOVE                             R6 R0
       20 CALL                             R4 2 0
       21 GETTABLEKS                       R5 R2 K1 ["loadedAnimation"]
       23 JUMPIFEQKNIL                     R5 ; [+8]
       25 GETTABLEKS                       R4 R2 K1 ["loadedAnimation"]
       27 GETTABLEKS                       R4 R4 K2 ["tracks"]
       29 GETTABLEKS                       R4 R4 K3 ["primaryTrack"]
       31 JUMP                             ; [+1]
       32 LOADNIL                          R4
       33 JUMPIFEQKNIL                     R4 ; [+8]
       35 JUMPIFEQ                         R4 R3 ; [+6]
       37 GETUPVAL                         R5 2
       38 MOVE                             R6 R2
       39 MOVE                             R7 R1
       40 CALL                             R5 2 0
       41 RETURN                           R0 0
       42 GETTABLEKS                       R5 R2 K1 ["loadedAnimation"]
       44 JUMPIFNOTEQKNIL                  R5 ; [+2]
       46 RETURN                           R0 0
       47 JUMPIFEQKNIL                     R1 ; [+3]
       49 MOVE                             R6 R1
       50 JUMP                             ; [+2]
       51 GETTABLEKS                       R6 R2 K4 ["currentTime"]
       53 GETTABLEKS                       R7 R5 K2 ["tracks"]
       55 GETTABLEKS                       R7 R7 K5 ["seek"]
       57 MOVE                             R8 R6
       58 CALL                             R7 1 0
       59 GETUPVAL                         R7 3
       60 GETTABLEKS                       R8 R5 K6 ["animator"]
       62 LOADN                            R9 0
       63 GETTABLEKS                       R10 R5 K7 ["retargetingEnabled"]
       65 CALL                             R7 3 0
       66 RETURN                           R0 0

PROTO_37:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLE                         R0 R2 R1
        3 GETUPVAL                         R2 2
        4 GETUPVAL                         R3 0
        5 GETTABLE                         R1 R2 R3
        6 GETUPVAL                         R2 3
        7 SETTABLEKS                       R2 R0 K0 ["currentTime"]
        9 GETUPVAL                         R2 4
       10 GETUPVAL                         R3 5
       11 CALL                             R2 1 0
       12 GETTABLEKS                       R2 R0 K1 ["isPlaying"]
       14 JUMPIFNOT                        R2 ; [+4]
       15 GETUPVAL                         R2 6
       16 MOVE                             R3 R0
       17 MOVE                             R4 R1
       18 CALL                             R2 2 0
       19 RETURN                           R0 0

PROTO_38:
        0 GETTABLEKS                       R2 R1 K0 ["id"]
        2 GETUPVAL                         R3 0
        3 MOVE                             R4 R2
        4 NEWCLOSURE                       R5 P0
        5 CAPTURE                          VAL R2
        6 CAPTURE                          UPVAL U1
        7 CAPTURE                          UPVAL U2
        8 CAPTURE                          VAL R0
        9 CAPTURE                          UPVAL U3
       10 CAPTURE                          VAL R1
       11 CAPTURE                          UPVAL U4
       12 CALL                             R3 2 0
       13 RETURN                           R0 0

PROTO_39:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["id"]
        3 GETUPVAL                         R2 1
        4 GETTABLE                         R0 R2 R1
        5 GETTABLEKS                       R1 R0 K1 ["renderSteppedConnection"]
        7 JUMPIFEQKNIL                     R1 ; [+9]
        9 GETTABLEKS                       R1 R0 K1 ["renderSteppedConnection"]
       11 NAMECALL                         R1 R1 K2 ["Disconnect"]
       13 CALL                             R1 1 0
       14 LOADNIL                          R1
       15 SETTABLEKS                       R1 R0 K1 ["renderSteppedConnection"]
       17 LOADB                            R1 0
       18 SETTABLEKS                       R1 R0 K3 ["isPlaying"]
       20 GETUPVAL                         R1 2
       21 JUMPIFEQKNIL                     R1 ; [+4]
       23 GETUPVAL                         R1 2
       24 SETTABLEKS                       R1 R0 K4 ["currentTime"]
       26 GETUPVAL                         R1 3
       27 GETUPVAL                         R2 0
       28 GETUPVAL                         R3 4
       29 CALL                             R1 2 0
       30 RETURN                           R0 0

PROTO_40:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R4 R1 K0 ["id"]
        3 NEWCLOSURE                       R5 P0
        4 CAPTURE                          VAL R1
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          VAL R2
        7 CAPTURE                          UPVAL U2
        8 CAPTURE                          VAL R0
        9 CALL                             R3 2 0
       10 RETURN                           R0 0

PROTO_41:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 JUMPIFEQKNIL                     R1 ; [+4]
        4 GETTABLEKS                       R2 R1 K0 ["loadedAnimation"]
        6 JUMP                             ; [+1]
        7 LOADNIL                          R2
        8 JUMPIFNOTEQKNIL                  R2 ; [+3]
       10 LOADB                            R3 0
       11 RETURN                           R3 1
       12 GETUPVAL                         R3 1
       13 NAMECALL                         R3 R3 K1 ["IsRunning"]
       15 CALL                             R3 1 1
       16 JUMPIF                           R3 ; [+9]
       17 GETTABLEKS                       R3 R2 K2 ["animator"]
       19 GETTABLEKS                       R3 R3 K3 ["StepAnimationsInternal"]
       21 JUMPIFEQKNIL                     R3 ; [+4]
       23 GETTABLEKS                       R3 R2 K4 ["retargetingEnabled"]
       25 RETURN                           R3 1
       26 GETIMPORT                        R4 K6 [workspace]
       28 GETTABLEKS                       R4 R4 K7 ["Retargeting"]
       30 GETIMPORT                        R5 K11 [Enum.AnimatorRetargetingMode.Enabled]
       32 JUMPIFEQ                         R4 R5 ; [+2]
       34 LOADB                            R3 0 +1
       35 LOADB                            R3 1
       36 RETURN                           R3 1

PROTO_42:
        0 GETUPVAL                         R3 0
        1 GETTABLE                         R2 R3 R1
        2 LOADB                            R4 0
        3 GETTABLEKS                       R5 R2 K0 ["useEditPreview"]
        5 JUMPIFNOTEQKB                    R5 TRUE ; [+9]
        7 GETTABLEKS                       R5 R2 K1 ["cache"]
        9 GETTABLEKS                       R5 R5 K2 ["editPreviewSequence"]
       11 JUMPIFNOTEQKNIL                  R5 ; [+2]
       13 LOADB                            R4 0 +1
       14 LOADB                            R4 1
       15 JUMPIFNOT                        R4 ; [+5]
       16 GETTABLEKS                       R3 R2 K1 ["cache"]
       18 GETTABLEKS                       R3 R3 K2 ["editPreviewSequence"]
       20 JUMP                             ; [+5]
       21 GETUPVAL                         R3 1
       22 GETTABLEKS                       R3 R3 K3 ["resolveSequence"]
       24 MOVE                             R4 R2
       25 CALL                             R3 1 1
       26 GETTABLEKS                       R4 R2 K4 ["rig"]
       28 JUMPIFEQKNIL                     R3 ; [+7]
       30 JUMPIFEQKNIL                     R4 ; [+5]
       32 GETTABLEKS                       R5 R0 K5 ["loadedAnimation"]
       34 JUMPIFNOTEQKNIL                  R5 ; [+2]
       36 RETURN                           R0 0
       37 GETTABLEKS                       R5 R0 K5 ["loadedAnimation"]
       39 GETTABLEKS                       R5 R5 K6 ["animator"]
       41 GETTABLEKS                       R7 R2 K7 ["isUpscale"]
       43 JUMPIF                           R7 ; [+2]
       44 LOADB                            R6 1
       45 JUMP                             ; [+4]
       46 GETUPVAL                         R7 2
       47 MOVE                             R8 R4
       48 CALL                             R7 1 1
       49 NOT                              R6 R7
       50 GETUPVAL                         R7 3
       51 MOVE                             R8 R5
       52 MOVE                             R9 R2
       53 MOVE                             R10 R3
       54 CALL                             R7 3 1
       55 JUMPIFNOTEQKNIL                  R7 ; [+2]
       57 RETURN                           R0 0
       58 GETTABLEKS                       R8 R0 K5 ["loadedAnimation"]
       60 GETTABLEKS                       R8 R8 K8 ["tracks"]
       62 GETTABLEKS                       R8 R8 K9 ["destroy"]
       64 CALL                             R8 0 0
       65 GETTABLEKS                       R8 R7 K10 ["play"]
       67 CALL                             R8 0 0
       68 GETTABLEKS                       R8 R7 K11 ["needsWarmUpStep"]
       70 JUMPIFNOT                        R8 ; [+5]
       71 GETUPVAL                         R8 4
       72 MOVE                             R9 R5
       73 LOADK                            R10 K12 [0.016666666666666666]
       74 MOVE                             R11 R6
       75 CALL                             R8 3 0
       76 GETTABLEKS                       R8 R0 K5 ["loadedAnimation"]
       78 SETTABLEKS                       R7 R8 K8 ["tracks"]
       80 GETTABLEKS                       R8 R0 K5 ["loadedAnimation"]
       82 SETTABLEKS                       R6 R8 K13 ["retargetingEnabled"]
       84 LOADB                            R8 0
       85 GETTABLEKS                       R9 R2 K0 ["useEditPreview"]
       87 JUMPIFNOTEQKB                    R9 TRUE ; [+9]
       89 GETTABLEKS                       R9 R2 K1 ["cache"]
       91 GETTABLEKS                       R9 R9 K2 ["editPreviewSequence"]
       93 JUMPIFNOTEQKNIL                  R9 ; [+2]
       95 LOADB                            R8 0 +1
       96 LOADB                            R8 1
       97 SETTABLEKS                       R8 R0 K14 ["loadedUsesPreview"]
       99 GETTABLEKS                       R8 R0 K5 ["loadedAnimation"]
      101 GETTABLEKS                       R9 R8 K8 ["tracks"]
      103 GETTABLEKS                       R9 R9 K15 ["setR6BlendWeights"]
      105 GETUPVAL                         R10 5
      106 GETTABLEKS                       R10 R10 K16 ["aiGeneratedWeights"]
      108 GETTABLEKS                       R11 R2 K17 ["settings"]
      110 JUMPIFNOT                        R11 ; [+4]
      111 GETTABLEKS                       R11 R2 K17 ["settings"]
      113 GETTABLEKS                       R11 R11 K18 ["blend"]
      115 CALL                             R10 1 -1
      116 CALL                             R9 -1 0
      117 LOADB                            R8 0
      118 SETTABLEKS                       R8 R2 K19 ["needsReload"]
      120 RETURN                           R0 0

PROTO_43:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 1
        5 LOADNIL                          R1
        6 LOADNIL                          R2
        7 FORGPREP                         R0
        8 GETTABLEKS                       R5 R4 K1 ["loadedAnimation"]
       10 JUMPIFNOTEQKNIL                  R5 ; [+2]
       12 JUMP                             ; [+23]
       13 GETTABLEKS                       R5 R4 K1 ["loadedAnimation"]
       15 GETTABLEKS                       R5 R5 K2 ["ancestryChangedConnection"]
       17 NAMECALL                         R5 R5 K0 ["Disconnect"]
       19 CALL                             R5 1 0
       20 GETTABLEKS                       R5 R4 K1 ["loadedAnimation"]
       22 GETTABLEKS                       R5 R5 K3 ["tracks"]
       24 GETTABLEKS                       R5 R5 K4 ["destroy"]
       26 CALL                             R5 0 0
       27 GETUPVAL                         R5 2
       28 GETTABLEKS                       R6 R4 K1 ["loadedAnimation"]
       30 GETTABLEKS                       R6 R6 K5 ["animator"]
       32 CALL                             R5 1 0
       33 LOADNIL                          R5
       34 SETTABLEKS                       R5 R4 K1 ["loadedAnimation"]
       36 GETTABLEKS                       R5 R4 K6 ["renderSteppedConnection"]
       38 JUMPIFEQKNIL                     R5 ; [+9]
       40 GETTABLEKS                       R5 R4 K6 ["renderSteppedConnection"]
       42 NAMECALL                         R5 R5 K0 ["Disconnect"]
       44 CALL                             R5 1 0
       45 LOADNIL                          R5
       46 SETTABLEKS                       R5 R4 K6 ["renderSteppedConnection"]
       48 LOADB                            R5 0
       49 SETTABLEKS                       R5 R4 K7 ["isPlaying"]
       51 GETUPVAL                         R5 1
       52 LOADNIL                          R6
       53 SETTABLE                         R6 R5 R3
       54 GETUPVAL                         R6 3
       55 GETTABLE                         R5 R6 R3
       56 JUMPIFEQKNIL                     R5 ; [+11]
       58 GETTABLEKS                       R6 R5 K8 ["playbackStateChanged"]
       60 JUMPIFEQKNIL                     R6 ; [+7]
       62 GETTABLEKS                       R6 R5 K8 ["playbackStateChanged"]
       64 GETUPVAL                         R7 4
       65 MOVE                             R8 R3
       66 CALL                             R7 1 1
       67 CALL                             R6 1 0
       68 FORGLOOP                         R0 2 ; [-61]
       70 GETIMPORT                        R0 K11 [table.clear]
       72 GETUPVAL                         R1 1
       73 CALL                             R0 1 0
       74 GETIMPORT                        R0 K11 [table.clear]
       76 GETUPVAL                         R1 3
       77 CALL                             R0 1 0
       78 RETURN                           R0 0

PROTO_44:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 JUMPIFNOTEQKNIL                  R1 ; [+2]
        4 RETURN                           R0 0
        5 GETTABLEKS                       R2 R1 K0 ["loadedAnimation"]
        7 JUMPIFNOTEQKNIL                  R2 ; [+2]
        9 JUMP                             ; [+23]
       10 GETTABLEKS                       R2 R1 K0 ["loadedAnimation"]
       12 GETTABLEKS                       R2 R2 K1 ["ancestryChangedConnection"]
       14 NAMECALL                         R2 R2 K2 ["Disconnect"]
       16 CALL                             R2 1 0
       17 GETTABLEKS                       R2 R1 K0 ["loadedAnimation"]
       19 GETTABLEKS                       R2 R2 K3 ["tracks"]
       21 GETTABLEKS                       R2 R2 K4 ["destroy"]
       23 CALL                             R2 0 0
       24 GETUPVAL                         R2 1
       25 GETTABLEKS                       R3 R1 K0 ["loadedAnimation"]
       27 GETTABLEKS                       R3 R3 K5 ["animator"]
       29 CALL                             R2 1 0
       30 LOADNIL                          R2
       31 SETTABLEKS                       R2 R1 K0 ["loadedAnimation"]
       33 GETTABLEKS                       R2 R1 K6 ["renderSteppedConnection"]
       35 JUMPIFEQKNIL                     R2 ; [+9]
       37 GETTABLEKS                       R2 R1 K6 ["renderSteppedConnection"]
       39 NAMECALL                         R2 R2 K2 ["Disconnect"]
       41 CALL                             R2 1 0
       42 LOADNIL                          R2
       43 SETTABLEKS                       R2 R1 K6 ["renderSteppedConnection"]
       45 LOADB                            R2 0
       46 SETTABLEKS                       R2 R1 K7 ["isPlaying"]
       48 GETUPVAL                         R2 0
       49 LOADNIL                          R3
       50 SETTABLE                         R3 R2 R0
       51 GETUPVAL                         R3 2
       52 GETTABLE                         R2 R3 R0
       53 JUMPIFEQKNIL                     R2 ; [+11]
       55 GETTABLEKS                       R3 R2 K8 ["playbackStateChanged"]
       57 JUMPIFEQKNIL                     R3 ; [+7]
       59 GETTABLEKS                       R3 R2 K8 ["playbackStateChanged"]
       61 GETUPVAL                         R4 3
       62 MOVE                             R5 R0
       63 CALL                             R4 1 1
       64 CALL                             R3 1 0
       65 GETUPVAL                         R2 2
       66 LOADNIL                          R3
       67 SETTABLE                         R3 R2 R0
       68 RETURN                           R0 0

PROTO_45:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 JUMPIFNOT                        R1 ; [+3]
        3 GETTABLEKS                       R2 R1 K0 ["currentTime"]
        5 RETURN                           R2 1
        6 LOADN                            R2 0
        7 RETURN                           R2 1

PROTO_46:
        0 LOADN                            R2 1
        1 LOADN                            R0 2
        2 LOADN                            R1 1
        3 FORNPREP                         R0
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R3 R3 K0 ["RenderStepped"]
        7 NAMECALL                         R3 R3 K1 ["Wait"]
        9 CALL                             R3 1 0
       10 GETUPVAL                         R3 1
       11 GETTABLEKS                       R3 R3 K2 ["loadedAnimation"]
       13 GETUPVAL                         R4 2
       14 JUMPIFNOTEQ                      R3 R4 ; [+31]
       16 GETUPVAL                         R3 1
       17 GETTABLEKS                       R3 R3 K3 ["isPlaying"]
       19 JUMPIF                           R3 ; [+26]
       20 GETUPVAL                         R3 3
       21 GETTABLEKS                       R3 R3 K4 ["needsReload"]
       23 JUMPIF                           R3 ; [+22]
       24 GETUPVAL                         R3 1
       25 GETTABLEKS                       R4 R3 K2 ["loadedAnimation"]
       27 JUMPIFNOTEQKNIL                  R4 ; [+2]
       29 JUMP                             ; [+15]
       30 GETTABLEKS                       R5 R3 K5 ["currentTime"]
       32 GETTABLEKS                       R6 R4 K6 ["tracks"]
       34 GETTABLEKS                       R6 R6 K7 ["seek"]
       36 MOVE                             R7 R5
       37 CALL                             R6 1 0
       38 GETUPVAL                         R6 4
       39 GETTABLEKS                       R7 R4 K8 ["animator"]
       41 LOADN                            R8 0
       42 GETTABLEKS                       R9 R4 K9 ["retargetingEnabled"]
       44 CALL                             R6 3 0
       45 FORNLOOP                         R0
       46 GETUPVAL                         R0 1
       47 LOADB                            R1 0
       48 SETTABLEKS                       R1 R0 K10 ["blendRenderPending"]
       50 RETURN                           R0 0

PROTO_47:
        0 GETTABLEKS                       R1 R0 K0 ["id"]
        2 GETUPVAL                         R3 0
        3 GETTABLE                         R2 R3 R1
        4 GETUPVAL                         R4 1
        5 GETTABLE                         R3 R4 R1
        6 JUMPIFEQKNIL                     R2 ; [+3]
        8 JUMPIFNOTEQKNIL                  R3 ; [+2]
       10 RETURN                           R0 0
       11 GETUPVAL                         R4 2
       12 MOVE                             R5 R1
       13 MOVE                             R6 R0
       14 CALL                             R4 2 0
       15 GETTABLEKS                       R4 R2 K1 ["loadedAnimation"]
       17 JUMPIFEQKNIL                     R4 ; [+59]
       19 GETTABLEKS                       R4 R2 K1 ["loadedAnimation"]
       21 GETTABLEKS                       R5 R4 K2 ["tracks"]
       23 GETTABLEKS                       R5 R5 K3 ["setR6BlendWeights"]
       25 GETUPVAL                         R6 3
       26 GETTABLEKS                       R6 R6 K4 ["aiGeneratedWeights"]
       28 GETTABLEKS                       R7 R3 K5 ["settings"]
       30 JUMPIFNOT                        R7 ; [+4]
       31 GETTABLEKS                       R7 R3 K5 ["settings"]
       33 GETTABLEKS                       R7 R7 K6 ["blend"]
       35 CALL                             R6 1 -1
       36 CALL                             R5 -1 0
       37 GETTABLEKS                       R4 R2 K1 ["loadedAnimation"]
       39 JUMPIFNOTEQKNIL                  R4 ; [+2]
       41 JUMP                             ; [+15]
       42 GETTABLEKS                       R5 R2 K7 ["currentTime"]
       44 GETTABLEKS                       R6 R4 K2 ["tracks"]
       46 GETTABLEKS                       R6 R6 K8 ["seek"]
       48 MOVE                             R7 R5
       49 CALL                             R6 1 0
       50 GETUPVAL                         R6 4
       51 GETTABLEKS                       R7 R4 K9 ["animator"]
       53 LOADN                            R8 0
       54 GETTABLEKS                       R9 R4 K10 ["retargetingEnabled"]
       56 CALL                             R6 3 0
       57 GETTABLEKS                       R4 R2 K11 ["isPlaying"]
       59 JUMPIF                           R4 ; [+17]
       60 GETTABLEKS                       R4 R2 K12 ["blendRenderPending"]
       62 JUMPIF                           R4 ; [+14]
       63 LOADB                            R4 1
       64 SETTABLEKS                       R4 R2 K12 ["blendRenderPending"]
       66 GETTABLEKS                       R4 R2 K1 ["loadedAnimation"]
       68 GETIMPORT                        R5 K15 [task.spawn]
       70 NEWCLOSURE                       R6 P0
       71 CAPTURE                          UPVAL U5
       72 CAPTURE                          VAL R2
       73 CAPTURE                          VAL R4
       74 CAPTURE                          VAL R3
       75 CAPTURE                          UPVAL U4
       76 CALL                             R5 1 0
       77 RETURN                           R0 0

PROTO_48:
        0 GETTABLEKS                       R1 R0 K0 ["id"]
        2 GETUPVAL                         R3 0
        3 GETTABLE                         R2 R3 R1
        4 JUMPIFNOTEQKNIL                  R2 ; [+2]
        6 RETURN                           R0 0
        7 GETUPVAL                         R3 1
        8 MOVE                             R4 R1
        9 MOVE                             R5 R0
       10 CALL                             R3 2 0
       11 GETTABLEKS                       R3 R2 K1 ["loadedAnimation"]
       13 JUMPIFEQKNIL                     R3 ; [+6]
       15 GETUPVAL                         R3 2
       16 MOVE                             R4 R2
       17 MOVE                             R5 R1
       18 CALL                             R3 2 0
       19 JUMP                             ; [+4]
       20 GETUPVAL                         R3 3
       21 MOVE                             R4 R1
       22 MOVE                             R5 R0
       23 CALL                             R3 2 0
       24 GETTABLEKS                       R3 R2 K2 ["isPlaying"]
       26 JUMPIFNOT                        R3 ; [+21]
       27 GETTABLEKS                       R3 R2 K1 ["loadedAnimation"]
       29 JUMPIFNOTEQKNIL                  R3 ; [+2]
       31 RETURN                           R0 0
       32 GETTABLEKS                       R4 R2 K3 ["currentTime"]
       34 GETTABLEKS                       R5 R3 K4 ["tracks"]
       36 GETTABLEKS                       R5 R5 K5 ["seek"]
       38 MOVE                             R6 R4
       39 CALL                             R5 1 0
       40 GETUPVAL                         R5 4
       41 GETTABLEKS                       R6 R3 K6 ["animator"]
       43 LOADN                            R7 0
       44 GETTABLEKS                       R8 R3 K7 ["retargetingEnabled"]
       46 CALL                             R5 3 0
       47 RETURN                           R0 0
       48 GETUPVAL                         R3 5
       49 MOVE                             R4 R2
       50 CALL                             R3 1 0
       51 RETURN                           R0 0

PROTO_49:
        0 NEWTABLE                         R2 0 0
        2 NEWTABLE                         R3 0 0
        4 GETUPVAL                         R4 0
        5 GETTABLEKS                       R4 R4 K0 ["new"]
        7 CALL                             R4 0 1
        8 LOADN                            R5 0
        9 NEWCLOSURE                       R6 P0
       10 CAPTURE                          REF R5
       11 CAPTURE                          VAL R2
       12 CAPTURE                          VAL R1
       13 NEWCLOSURE                       R7 P1
       14 CAPTURE                          VAL R3
       15 CAPTURE                          VAL R6
       16 NEWCLOSURE                       R8 P2
       17 CAPTURE                          VAL R2
       18 CAPTURE                          VAL R3
       19 CAPTURE                          VAL R6
       20 NEWCLOSURE                       R9 P3
       21 CAPTURE                          VAL R2
       22 NEWCLOSURE                       R10 P4
       23 CAPTURE                          VAL R2
       24 LOADNIL                          R11
       25 NEWCLOSURE                       R12 P5
       26 CAPTURE                          VAL R2
       27 CAPTURE                          VAL R1
       28 CAPTURE                          UPVAL U1
       29 CAPTURE                          UPVAL U2
       30 CAPTURE                          UPVAL U3
       31 CAPTURE                          UPVAL U4
       32 CAPTURE                          UPVAL U5
       33 CAPTURE                          UPVAL U6
       34 CAPTURE                          UPVAL U7
       35 CAPTURE                          VAL R3
       36 CAPTURE                          VAL R6
       37 CAPTURE                          UPVAL U8
       38 NEWCLOSURE                       R13 P6
       39 CAPTURE                          VAL R1
       40 CAPTURE                          VAL R2
       41 CAPTURE                          VAL R12
       42 CAPTURE                          REF R11
       43 NEWCLOSURE                       R14 P7
       44 CAPTURE                          VAL R2
       45 CAPTURE                          VAL R1
       46 CAPTURE                          UPVAL U4
       47 CAPTURE                          VAL R4
       48 CAPTURE                          VAL R3
       49 CAPTURE                          VAL R8
       50 CAPTURE                          VAL R12
       51 CAPTURE                          UPVAL U9
       52 NEWCLOSURE                       R17 P8
       53 CAPTURE                          UPVAL U10
       54 CAPTURE                          VAL R2
       55 CAPTURE                          VAL R14
       56 NAMECALL                         R15 R0 K1 ["Connect"]
       58 CALL                             R15 2 1
       59 NEWCLOSURE                       R16 P9
       60 CAPTURE                          VAL R2
       61 CAPTURE                          VAL R3
       62 CAPTURE                          VAL R6
       63 NEWCLOSURE                       R17 P10
       64 CAPTURE                          VAL R8
       65 CAPTURE                          VAL R2
       66 CAPTURE                          VAL R13
       67 CAPTURE                          UPVAL U11
       68 CAPTURE                          VAL R1
       69 CAPTURE                          UPVAL U9
       70 NEWCLOSURE                       R18 P11
       71 CAPTURE                          VAL R8
       72 CAPTURE                          VAL R2
       73 CAPTURE                          VAL R1
       74 CAPTURE                          VAL R13
       75 CAPTURE                          UPVAL U9
       76 NEWCLOSURE                       R19 P12
       77 CAPTURE                          VAL R2
       78 CAPTURE                          VAL R13
       79 CAPTURE                          UPVAL U11
       80 CAPTURE                          UPVAL U7
       81 NEWCLOSURE                       R20 P13
       82 CAPTURE                          VAL R8
       83 CAPTURE                          VAL R2
       84 CAPTURE                          VAL R1
       85 CAPTURE                          VAL R19
       86 CAPTURE                          UPVAL U9
       87 NEWCLOSURE                       R21 P14
       88 CAPTURE                          VAL R8
       89 CAPTURE                          VAL R2
       90 CAPTURE                          VAL R19
       91 NEWCLOSURE                       R22 P15
       92 CAPTURE                          VAL R2
       93 CAPTURE                          UPVAL U12
       94 NEWCLOSURE                       R11 P16
       95 CAPTURE                          VAL R1
       96 CAPTURE                          UPVAL U1
       97 CAPTURE                          UPVAL U2
       98 CAPTURE                          UPVAL U6
       99 CAPTURE                          UPVAL U7
      100 CAPTURE                          UPVAL U8
      101 NEWCLOSURE                       R23 P17
      102 CAPTURE                          VAL R15
      103 CAPTURE                          VAL R2
      104 CAPTURE                          UPVAL U4
      105 CAPTURE                          VAL R3
      106 CAPTURE                          VAL R6
      107 NEWCLOSURE                       R24 P18
      108 CAPTURE                          VAL R2
      109 CAPTURE                          UPVAL U4
      110 CAPTURE                          VAL R3
      111 CAPTURE                          VAL R6
      112 NEWCLOSURE                       R25 P19
      113 CAPTURE                          VAL R2
      114 NEWCLOSURE                       R26 P20
      115 CAPTURE                          VAL R2
      116 CAPTURE                          VAL R1
      117 CAPTURE                          VAL R13
      118 CAPTURE                          UPVAL U8
      119 CAPTURE                          UPVAL U7
      120 CAPTURE                          UPVAL U12
      121 NEWCLOSURE                       R27 P21
      122 CAPTURE                          VAL R2
      123 CAPTURE                          VAL R13
      124 CAPTURE                          REF R11
      125 CAPTURE                          VAL R12
      126 CAPTURE                          UPVAL U7
      127 CAPTURE                          UPVAL U11
      128 DUPTABLE                         R28 K15 [{"setAnimation", "playFromStart", "getPlaybackState", "setIsPlaying", "setCurrentTime", "poseAtTime", "isRetargetingEnabled", "refreshR6BlendWeights", "swapPlayingSequence", "removeAnimation", "getCurrentTime", "rigChangedSignal", "destroy"}]
      129 SETTABLEKS                       R16 R28 K2 ["setAnimation"]
      131 SETTABLEKS                       R17 R28 K3 ["playFromStart"]
      133 SETTABLEKS                       R6 R28 K4 ["getPlaybackState"]
      135 SETTABLEKS                       R18 R28 K5 ["setIsPlaying"]
      137 SETTABLEKS                       R20 R28 K6 ["setCurrentTime"]
      139 SETTABLEKS                       R21 R28 K7 ["poseAtTime"]
      141 SETTABLEKS                       R22 R28 K8 ["isRetargetingEnabled"]
      143 SETTABLEKS                       R26 R28 K9 ["refreshR6BlendWeights"]
      145 SETTABLEKS                       R27 R28 K10 ["swapPlayingSequence"]
      147 SETTABLEKS                       R24 R28 K11 ["removeAnimation"]
      149 SETTABLEKS                       R25 R28 K12 ["getCurrentTime"]
      151 SETTABLEKS                       R4 R28 K13 ["rigChangedSignal"]
      153 SETTABLEKS                       R23 R28 K14 ["destroy"]
      155 CLOSEUPVALS                      R5
      156 RETURN                           R28 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["AnimationClipProvider"]
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
       43 GETTABLEKS                       R7 R7 K17 ["State"]
       45 GETTABLEKS                       R7 R7 K18 ["AnimationPlayerParameters"]
       47 CALL                             R6 1 1
       48 GETIMPORT                        R7 K11 [require]
       50 GETTABLEKS                       R8 R3 K15 ["Util"]
       52 GETTABLEKS                       R8 R8 K16 ["AnimationGen"]
       54 GETTABLEKS                       R8 R8 K19 ["BlendSettings"]
       56 CALL                             R7 1 1
       57 GETIMPORT                        R8 K11 [require]
       59 GETTABLEKS                       R9 R3 K15 ["Util"]
       61 GETTABLEKS                       R9 R9 K16 ["AnimationGen"]
       63 GETTABLEKS                       R9 R9 K20 ["HostTypes"]
       65 CALL                             R8 1 1
       66 GETIMPORT                        R9 K11 [require]
       68 GETTABLEKS                       R10 R3 K15 ["Util"]
       70 GETTABLEKS                       R10 R10 K16 ["AnimationGen"]
       72 GETTABLEKS                       R10 R10 K21 ["PlaybackTracks"]
       74 CALL                             R9 1 1
       75 GETIMPORT                        R10 K11 [require]
       77 GETTABLEKS                       R11 R3 K22 ["Types"]
       79 CALL                             R10 1 1
       80 GETIMPORT                        R11 K11 [require]
       82 GETTABLEKS                       R12 R3 K15 ["Util"]
       84 GETTABLEKS                       R12 R12 K16 ["AnimationGen"]
       86 GETTABLEKS                       R12 R12 K23 ["clearAnimationPose"]
       88 CALL                             R11 1 1
       89 GETIMPORT                        R12 K11 [require]
       91 GETTABLEKS                       R13 R3 K15 ["Util"]
       93 GETTABLEKS                       R13 R13 K16 ["AnimationGen"]
       95 GETTABLEKS                       R13 R13 K24 ["createR6BlendTracks"]
       97 CALL                             R12 1 1
       98 GETIMPORT                        R13 K11 [require]
      100 GETTABLEKS                       R14 R3 K15 ["Util"]
      102 GETTABLEKS                       R14 R14 K16 ["AnimationGen"]
      104 GETTABLEKS                       R14 R14 K25 ["ensureHumanoidRigDescription"]
      106 CALL                             R13 1 1
      107 GETIMPORT                        R14 K11 [require]
      109 GETTABLEKS                       R15 R3 K15 ["Util"]
      111 GETTABLEKS                       R15 R15 K16 ["AnimationGen"]
      113 GETTABLEKS                       R15 R15 K26 ["isRigInWorkspace"]
      115 CALL                             R14 1 1
      116 GETIMPORT                        R15 K11 [require]
      118 GETTABLEKS                       R16 R3 K15 ["Util"]
      120 GETTABLEKS                       R16 R16 K16 ["AnimationGen"]
      122 GETTABLEKS                       R16 R16 K27 ["isStandardR15Rig"]
      124 CALL                             R15 1 1
      125 GETIMPORT                        R16 K11 [require]
      127 GETTABLEKS                       R17 R3 K15 ["Util"]
      129 GETTABLEKS                       R17 R17 K16 ["AnimationGen"]
      131 GETTABLEKS                       R17 R17 K28 ["stepAnimations"]
      133 CALL                             R16 1 1
      134 DUPCLOSURE                       R17 K29 [PROTO_0]
      135 CAPTURE                          VAL R5
      136 CAPTURE                          VAL R1
      137 DUPCLOSURE                       R18 K30 [PROTO_1]
      138 DUPCLOSURE                       R19 K31 [PROTO_2]
      139 DUPCLOSURE                       R20 K32 [PROTO_3]
      140 CAPTURE                          VAL R11
      141 DUPCLOSURE                       R21 K33 [PROTO_4]
      142 CAPTURE                          VAL R11
      143 DUPCLOSURE                       R22 K34 [PROTO_5]
      144 CAPTURE                          VAL R16
      145 DUPCLOSURE                       R23 K35 [PROTO_6]
      146 CAPTURE                          VAL R16
      147 CAPTURE                          VAL R2
      148 DUPCLOSURE                       R24 K36 [PROTO_7]
      149 CAPTURE                          VAL R11
      150 DUPCLOSURE                       R25 K37 [PROTO_8]
      151 DUPCLOSURE                       R26 K38 [PROTO_9]
      152 CAPTURE                          VAL R6
      153 DUPCLOSURE                       R27 K39 [PROTO_10]
      154 CAPTURE                          VAL R15
      155 DUPCLOSURE                       R28 K40 [PROTO_12]
      156 CAPTURE                          VAL R0
      157 DUPCLOSURE                       R29 K41 [PROTO_13]
      158 CAPTURE                          VAL R16
      159 DUPCLOSURE                       R30 K42 [PROTO_15]
      160 CAPTURE                          VAL R7
      161 CAPTURE                          VAL R12
      162 CAPTURE                          VAL R28
      163 CAPTURE                          VAL R9
      164 DUPCLOSURE                       R31 K43 [PROTO_16]
      165 CAPTURE                          VAL R7
      166 DUPCLOSURE                       R32 K44 [PROTO_18]
      167 CAPTURE                          VAL R16
      168 CAPTURE                          VAL R2
      169 DUPCLOSURE                       R33 K45 [PROTO_49]
      170 CAPTURE                          VAL R4
      171 CAPTURE                          VAL R6
      172 CAPTURE                          VAL R15
      173 CAPTURE                          VAL R13
      174 CAPTURE                          VAL R11
      175 CAPTURE                          VAL R17
      176 CAPTURE                          VAL R30
      177 CAPTURE                          VAL R16
      178 CAPTURE                          VAL R7
      179 CAPTURE                          VAL R32
      180 CAPTURE                          VAL R14
      181 CAPTURE                          VAL R23
      182 CAPTURE                          VAL R2
      183 RETURN                           R33 1
