PROTO_0:
        0 MOVE                             R2 R0
        1 LOADNIL                          R3
        2 LOADNIL                          R4
        3 FORGPREP                         R2
        4 GETTABLEKS                       R9 R6 K0 ["Time"]
        6 SUB                              R8 R9 R1
        7 FASTCALL1                        MATH_ABS R8 ; [+2]
        8 GETIMPORT                        R7 K3 [math.abs]
       10 CALL                             R7 1 1
       11 LOADK                            R8 K4 [0.0001]
       12 JUMPIFNOTLT                      R7 R8 ; [+2]
       14 RETURN                           R6 1
       15 FORGLOOP                         R2 2 ; [-12]
       17 LOADNIL                          R2
       18 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R3 0
        1 GETTABLE                         R2 R3 R0
        2 OR                               R1 R2 R0
        3 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R3 0
        1 GETTABLE                         R2 R3 R0
        2 OR                               R1 R2 R0
        3 RETURN                           R1 1

PROTO_4:
        0 GETUPVAL                         R3 0
        1 GETTABLE                         R2 R3 R0
        2 JUMPIFNOTEQKNIL                  R2 ; [+2]
        4 LOADB                            R1 0 +1
        5 LOADB                            R1 1
        6 RETURN                           R1 1

PROTO_5:
        0 LOADB                            R2 0
        1 GETUPVAL                         R4 0
        2 GETTABLE                         R3 R4 R0
        3 JUMPIFNOTEQ                      R3 R1 ; [+12]
        5 LOADB                            R2 0
        6 GETUPVAL                         R4 1
        7 GETTABLE                         R3 R4 R1
        8 JUMPIFNOTEQ                      R3 R0 ; [+7]
       10 GETUPVAL                         R4 2
       11 GETTABLE                         R3 R4 R1
       12 JUMPIFNOTEQKNIL                  R3 ; [+2]
       14 LOADB                            R2 0 +1
       15 LOADB                            R2 1
       16 RETURN                           R2 1

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 LOADNIL                          R3
        3 NAMECALL                         R0 R0 K0 ["sampleAt"]
        5 CALL                             R0 3 0
        6 GETUPVAL                         R0 2
        7 GETUPVAL                         R1 0
        8 GETTABLEKS                       R1 R1 K1 ["character"]
       10 GETUPVAL                         R3 3
       11 GETTABLEN                        R2 R3 1
       12 GETUPVAL                         R3 1
       13 CALL                             R0 3 -1
       14 RETURN                           R0 -1

PROTO_7:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R6 1
        2 GETTABLE                         R5 R6 R0
        3 OR                               R4 R5 R0
        4 GETTABLE                         R2 R3 R4
        5 JUMPIFEQKNIL                     R2 ; [+7]
        7 GETUPVAL                         R3 2
        8 GETTABLEKS                       R3 R3 K0 ["resolveSequence"]
       10 MOVE                             R4 R2
       11 CALL                             R3 1 1
       12 JUMP                             ; [+1]
       13 LOADNIL                          R3
       14 JUMPIFNOTEQKNIL                  R3 ; [+3]
       16 LOADNIL                          R4
       17 RETURN                           R4 1
       18 NAMECALL                         R4 R3 K1 ["GetKeyframes"]
       20 CALL                             R4 1 1
       21 LENGTH                           R5 R4
       22 JUMPIFNOTEQKN                    R5 K2 [0] ; [+3]
       24 LOADNIL                          R5
       25 RETURN                           R5 1
       26 MOVE                             R6 R4
       27 LOADNIL                          R7
       28 LOADNIL                          R8
       29 FORGPREP                         R6
       30 GETTABLEKS                       R13 R10 K3 ["Time"]
       32 SUB                              R12 R13 R1
       33 FASTCALL1                        MATH_ABS R12 ; [+2]
       34 GETIMPORT                        R11 K6 [math.abs]
       36 CALL                             R11 1 1
       37 LOADK                            R12 K7 [0.0001]
       38 JUMPIFNOTLT                      R11 R12 ; [+3]
       40 MOVE                             R5 R10
       41 JUMP                             ; [+3]
       42 FORGLOOP                         R6 2 ; [-13]
       44 LOADNIL                          R5
       45 JUMPIFEQKNIL                     R5 ; [+7]
       47 NAMECALL                         R6 R5 K8 ["Clone"]
       49 CALL                             R6 1 1
       50 SETTABLEKS                       R1 R6 K3 ["Time"]
       52 RETURN                           R6 1
       53 GETUPVAL                         R6 3
       54 GETTABLEKS                       R6 R6 K9 ["openClipSampleSession"]
       56 MOVE                             R7 R3
       57 CALL                             R6 1 1
       58 JUMPIFNOTEQKNIL                  R6 ; [+3]
       60 LOADNIL                          R7
       61 RETURN                           R7 1
       62 GETIMPORT                        R7 K11 [pcall]
       64 NEWCLOSURE                       R8 P0
       65 CAPTURE                          VAL R6
       66 CAPTURE                          VAL R1
       67 CAPTURE                          UPVAL U4
       68 CAPTURE                          VAL R4
       69 CALL                             R7 1 2
       70 NAMECALL                         R9 R6 K12 ["destroy"]
       72 CALL                             R9 1 0
       73 JUMPIF                           R7 ; [+5]
       74 GETIMPORT                        R9 K14 [error]
       76 MOVE                             R10 R8
       77 LOADN                            R11 0
       78 CALL                             R9 2 0
       79 RETURN                           R8 1

PROTO_8:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R5 1
        2 GETTABLE                         R4 R5 R0
        3 OR                               R3 R4 R0
        4 GETTABLE                         R1 R2 R3
        5 JUMPIFEQKNIL                     R1 ; [+7]
        7 GETUPVAL                         R2 2
        8 GETTABLEKS                       R2 R2 K0 ["resolveSequence"]
       10 MOVE                             R3 R1
       11 CALL                             R2 1 1
       12 JUMP                             ; [+1]
       13 LOADNIL                          R2
       14 JUMPIFEQKNIL                     R1 ; [+3]
       16 JUMPIFNOTEQKNIL                  R2 ; [+3]
       18 LOADNIL                          R3
       19 RETURN                           R3 1
       20 GETUPVAL                         R3 3
       21 GETTABLEKS                       R3 R3 K1 ["hasEditedKeyframes"]
       23 MOVE                             R4 R0
       24 CALL                             R3 1 1
       25 JUMPIF                           R3 ; [+2]
       26 LOADNIL                          R3
       27 RETURN                           R3 1
       28 GETUPVAL                         R3 4
       29 GETUPVAL                         R4 3
       30 MOVE                             R5 R0
       31 MOVE                             R6 R2
       32 CALL                             R3 3 -1
       33 RETURN                           R3 -1

PROTO_9:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["FFlagAssistantAnimationGenSnapToEditedPoses"]
        3 JUMPIF                           R2 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R3 1
        6 GETUPVAL                         R6 2
        7 GETTABLE                         R5 R6 R0
        8 OR                               R4 R5 R0
        9 GETTABLE                         R2 R3 R4
       10 JUMPIFNOTEQKNIL                  R2 ; [+2]
       12 RETURN                           R0 0
       13 GETTABLEKS                       R3 R2 K1 ["cache"]
       15 GETTABLEKS                       R3 R3 K2 ["editPreviewSequence"]
       17 GETTABLEKS                       R4 R2 K1 ["cache"]
       19 GETUPVAL                         R5 3
       20 MOVE                             R6 R0
       21 CALL                             R5 1 1
       22 SETTABLEKS                       R5 R4 K2 ["editPreviewSequence"]
       24 JUMPIFEQKNIL                     R3 ; [+10]
       26 GETTABLEKS                       R4 R2 K1 ["cache"]
       28 GETTABLEKS                       R4 R4 K2 ["editPreviewSequence"]
       30 JUMPIFEQ                         R3 R4 ; [+4]
       32 NAMECALL                         R4 R3 K3 ["Destroy"]
       34 CALL                             R4 1 0
       35 GETTABLEKS                       R4 R2 K4 ["useEditPreview"]
       37 JUMPIFNOT                        R4 ; [+4]
       38 JUMPIF                           R1 ; [+3]
       39 LOADB                            R4 1
       40 SETTABLEKS                       R4 R2 K5 ["needsReload"]
       42 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R3 0
        1 GETTABLE                         R2 R3 R0
        2 JUMPIFNOTEQKNIL                  R2 ; [+2]
        4 RETURN                           R0 0
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R3 R3 K0 ["FFlagAssistantAnimationGenSnapToEditedPoses"]
        8 JUMPIFNOT                        R3 ; [+11]
        9 GETUPVAL                         R5 2
       10 GETTABLE                         R4 R5 R0
       11 JUMPIFNOTEQKNIL                  R4 ; [+2]
       13 LOADB                            R3 0 +1
       14 LOADB                            R3 1
       15 JUMPIF                           R3 ; [+4]
       16 JUMPIFEQKB                       R1 TRUE ; [+2]
       18 LOADB                            R3 0 +1
       19 LOADB                            R3 1
       20 SETTABLEKS                       R3 R2 K1 ["useEditPreview"]
       22 GETTABLEKS                       R3 R2 K1 ["useEditPreview"]
       24 JUMPIFNOT                        R3 ; [+11]
       25 GETTABLEKS                       R3 R2 K2 ["cache"]
       27 GETTABLEKS                       R3 R3 K3 ["editPreviewSequence"]
       29 JUMPIFNOTEQKNIL                  R3 ; [+6]
       31 GETUPVAL                         R3 3
       32 GETUPVAL                         R6 2
       33 GETTABLE                         R5 R6 R0
       34 OR                               R4 R5 R0
       35 CALL                             R3 1 0
       36 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R4 0
        1 GETTABLE                         R3 R4 R0
        2 OR                               R2 R3 R0
        3 GETUPVAL                         R4 1
        4 GETTABLE                         R3 R4 R2
        5 JUMPIFEQKNIL                     R3 ; [+4]
        7 GETTABLEKS                       R4 R3 K0 ["keyframeSequence"]
        9 JUMP                             ; [+1]
       10 LOADNIL                          R4
       11 JUMPIFEQKNIL                     R3 ; [+3]
       13 JUMPIFNOTEQKNIL                  R4 ; [+3]
       15 LOADNIL                          R5
       16 RETURN                           R5 1
       17 DUPTABLE                         R5 K5 [{"sourceContentId", "playbackContentId", "sharedState", "keyframeSequence", "animatorContext"}]
       18 SETTABLEKS                       R0 R5 K1 ["sourceContentId"]
       20 SETTABLEKS                       R2 R5 K2 ["playbackContentId"]
       22 SETTABLEKS                       R3 R5 K3 ["sharedState"]
       24 SETTABLEKS                       R4 R5 K0 ["keyframeSequence"]
       26 GETUPVAL                         R6 2
       27 MOVE                             R7 R2
       28 MOVE                             R8 R1
       29 CALL                             R6 2 1
       30 SETTABLEKS                       R6 R5 K4 ["animatorContext"]
       32 RETURN                           R5 1

PROTO_12:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["getContextOrLatest"]
        3 MOVE                             R3 R0
        4 CALL                             R2 1 1
        5 JUMPIFEQKNIL                     R2 ; [+6]
        7 GETUPVAL                         R3 1
        8 MOVE                             R4 R0
        9 MOVE                             R5 R2
       10 CALL                             R3 2 1
       11 JUMP                             ; [+1]
       12 LOADNIL                          R3
       13 JUMPIFNOTEQKNIL                  R3 ; [+3]
       15 LOADNIL                          R4
       16 RETURN                           R4 1
       17 GETTABLEKS                       R4 R3 K1 ["sharedState"]
       19 GETTABLEKS                       R5 R4 K2 ["rig"]
       21 JUMPIFEQKNIL                     R5 ; [+10]
       23 GETTABLEKS                       R6 R4 K3 ["useEditPreview"]
       25 JUMPIFNOT                        R6 ; [+6]
       26 GETTABLEKS                       R6 R4 K4 ["cache"]
       28 GETTABLEKS                       R6 R6 K5 ["editPreviewSequence"]
       30 JUMPIFNOTEQKNIL                  R6 ; [+3]
       32 LOADNIL                          R6
       33 RETURN                           R6 1
       34 GETUPVAL                         R6 2
       35 GETTABLEKS                       R6 R6 K6 ["poseAtTime"]
       37 MOVE                             R7 R1
       38 GETTABLEKS                       R8 R3 K7 ["animatorContext"]
       40 CALL                             R6 2 0
       41 GETUPVAL                         R6 3
       42 MOVE                             R7 R5
       43 CALL                             R6 1 -1
       44 RETURN                           R6 -1

PROTO_13:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 JUMPIFEQKNIL                     R1 ; [+4]
        4 GETUPVAL                         R3 1
        5 GETTABLE                         R2 R3 R1
        6 JUMP                             ; [+1]
        7 LOADNIL                          R2
        8 JUMPIFEQKNIL                     R2 ; [+4]
       10 LOADB                            R3 1
       11 SETTABLEKS                       R3 R2 K0 ["needsReload"]
       13 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R4 0
        1 GETTABLE                         R3 R4 R0
        2 JUMPIFNOTEQKNIL                  R3 ; [+2]
        4 RETURN                           R0 0
        5 GETUPVAL                         R4 1
        6 MOVE                             R5 R0
        7 LOADB                            R6 1
        8 CALL                             R4 2 0
        9 GETUPVAL                         R4 2
       10 MOVE                             R5 R3
       11 MOVE                             R6 R2
       12 CALL                             R4 2 1
       13 GETUPVAL                         R5 3
       14 GETTABLEKS                       R5 R5 K0 ["setAnimation"]
       16 MOVE                             R6 R4
       17 CALL                             R5 1 0
       18 GETUPVAL                         R5 3
       19 GETTABLEKS                       R5 R5 K1 ["setIsPlaying"]
       21 LOADB                            R6 0
       22 MOVE                             R7 R4
       23 CALL                             R5 2 0
       24 GETUPVAL                         R5 3
       25 GETTABLEKS                       R5 R5 K2 ["setCurrentTime"]
       27 MOVE                             R6 R1
       28 MOVE                             R7 R4
       29 CALL                             R5 2 0
       30 GETUPVAL                         R5 4
       31 GETTABLEKS                       R5 R5 K3 ["isPosing"]
       33 MOVE                             R6 R0
       34 CALL                             R5 1 1
       35 JUMPIFNOT                        R5 ; [+5]
       36 GETUPVAL                         R5 5
       37 GETTABLEKS                       R5 R5 K4 ["reapplySavedPose"]
       39 MOVE                             R6 R0
       40 CALL                             R5 1 0
       41 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R5 0
        1 GETTABLE                         R4 R5 R0
        2 FASTCALL2K                       ASSERT R4 K0 ; [+4]
        4 LOADK                            R5 K0 ["Edit preview requires a source player"]
        5 GETIMPORT                        R3 K2 [assert]
        7 CALL                             R3 2 1
        8 GETUPVAL                         R4 1
        9 SETTABLE                         R1 R4 R0
       10 GETUPVAL                         R4 2
       11 SETTABLE                         R0 R4 R1
       12 GETUPVAL                         R4 3
       13 GETTABLEKS                       R4 R4 K3 ["create"]
       15 GETUPVAL                         R5 3
       16 GETTABLEKS                       R5 R5 K4 ["getContent"]
       18 MOVE                             R6 R3
       19 CALL                             R5 1 1
       20 GETTABLEKS                       R6 R3 K5 ["rig"]
       22 CALL                             R4 2 1
       23 GETUPVAL                         R5 4
       24 GETTABLEKS                       R5 R5 K6 ["FFlagAssistantAnimationGenSnapToEditedPoses"]
       26 SETTABLEKS                       R5 R4 K7 ["useEditPreview"]
       28 GETUPVAL                         R5 0
       29 SETTABLE                         R4 R5 R1
       30 GETUPVAL                         R5 5
       31 GETTABLEKS                       R5 R5 K8 ["setAnimation"]
       33 GETUPVAL                         R6 6
       34 MOVE                             R7 R1
       35 MOVE                             R8 R2
       36 CALL                             R6 2 -1
       37 CALL                             R5 -1 0
       38 GETUPVAL                         R5 7
       39 MOVE                             R6 R0
       40 CALL                             R5 1 0
       41 GETUPVAL                         R5 6
       42 MOVE                             R6 R1
       43 MOVE                             R7 R2
       44 CALL                             R5 2 1
       45 GETUPVAL                         R6 5
       46 GETTABLEKS                       R6 R6 K9 ["playFromStart"]
       48 MOVE                             R7 R5
       49 CALL                             R6 1 0
       50 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 JUMPIFNOTEQKNIL                  R1 ; [+2]
        4 RETURN                           R0 0
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R2 R2 K0 ["deactivate"]
        8 MOVE                             R3 R0
        9 CALL                             R2 1 0
       10 GETUPVAL                         R2 2
       11 GETTABLEKS                       R2 R2 K1 ["removeAnimation"]
       13 MOVE                             R3 R1
       14 CALL                             R2 1 0
       15 GETUPVAL                         R3 3
       16 GETTABLE                         R2 R3 R1
       17 JUMPIFEQKNIL                     R2 ; [+6]
       19 GETUPVAL                         R3 4
       20 GETTABLEKS                       R3 R3 K2 ["disposeCache"]
       22 MOVE                             R4 R2
       23 CALL                             R3 1 0
       24 GETUPVAL                         R3 3
       25 LOADNIL                          R4
       26 SETTABLE                         R4 R3 R1
       27 GETUPVAL                         R3 0
       28 LOADNIL                          R4
       29 SETTABLE                         R4 R3 R0
       30 GETUPVAL                         R3 5
       31 LOADNIL                          R4
       32 SETTABLE                         R4 R3 R1
       33 RETURN                           R0 0

PROTO_17:
        0 GETIMPORT                        R0 K2 [table.clear]
        2 GETUPVAL                         R1 0
        3 CALL                             R0 1 0
        4 GETIMPORT                        R0 K2 [table.clear]
        6 GETUPVAL                         R1 1
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_18:
        0 GETTABLEKS                       R1 R0 K0 ["sharedStates"]
        2 GETTABLEKS                       R2 R0 K1 ["editor"]
        4 GETTABLEKS                       R3 R0 K2 ["animator"]
        6 GETTABLEKS                       R4 R0 K3 ["poseSelection"]
        8 GETTABLEKS                       R5 R0 K4 ["toAnimatorContext"]
       10 NEWTABLE                         R6 0 0
       12 NEWTABLE                         R7 0 0
       14 NEWCLOSURE                       R8 P0
       15 CAPTURE                          VAL R6
       16 NEWCLOSURE                       R9 P1
       17 CAPTURE                          VAL R6
       18 NEWCLOSURE                       R10 P2
       19 CAPTURE                          VAL R7
       20 NEWCLOSURE                       R11 P3
       21 CAPTURE                          VAL R7
       22 NEWCLOSURE                       R12 P4
       23 CAPTURE                          VAL R6
       24 CAPTURE                          VAL R7
       25 CAPTURE                          VAL R1
       26 NEWCLOSURE                       R13 P5
       27 CAPTURE                          VAL R1
       28 CAPTURE                          VAL R6
       29 CAPTURE                          UPVAL U0
       30 CAPTURE                          UPVAL U1
       31 CAPTURE                          UPVAL U2
       32 NEWCLOSURE                       R14 P6
       33 CAPTURE                          VAL R1
       34 CAPTURE                          VAL R6
       35 CAPTURE                          UPVAL U0
       36 CAPTURE                          VAL R2
       37 CAPTURE                          UPVAL U3
       38 NEWCLOSURE                       R15 P7
       39 CAPTURE                          UPVAL U4
       40 CAPTURE                          VAL R1
       41 CAPTURE                          VAL R6
       42 CAPTURE                          VAL R14
       43 NEWCLOSURE                       R16 P8
       44 CAPTURE                          VAL R1
       45 CAPTURE                          UPVAL U4
       46 CAPTURE                          VAL R7
       47 CAPTURE                          VAL R15
       48 NEWCLOSURE                       R17 P9
       49 CAPTURE                          VAL R6
       50 CAPTURE                          VAL R1
       51 CAPTURE                          VAL R5
       52 NEWCLOSURE                       R18 P10
       53 CAPTURE                          VAL R4
       54 CAPTURE                          VAL R17
       55 CAPTURE                          VAL R3
       56 CAPTURE                          UPVAL U5
       57 NEWCLOSURE                       R19 P11
       58 CAPTURE                          VAL R6
       59 CAPTURE                          VAL R1
       60 NEWCLOSURE                       R20 P12
       61 CAPTURE                          VAL R6
       62 CAPTURE                          VAL R15
       63 CAPTURE                          VAL R5
       64 CAPTURE                          VAL R3
       65 CAPTURE                          VAL R4
       66 CAPTURE                          VAL R2
       67 NEWCLOSURE                       R21 P13
       68 CAPTURE                          VAL R1
       69 CAPTURE                          VAL R6
       70 CAPTURE                          VAL R7
       71 CAPTURE                          UPVAL U6
       72 CAPTURE                          UPVAL U4
       73 CAPTURE                          VAL R3
       74 CAPTURE                          VAL R5
       75 CAPTURE                          VAL R15
       76 NEWCLOSURE                       R22 P14
       77 CAPTURE                          VAL R6
       78 CAPTURE                          VAL R4
       79 CAPTURE                          VAL R3
       80 CAPTURE                          VAL R1
       81 CAPTURE                          UPVAL U6
       82 CAPTURE                          VAL R7
       83 NEWCLOSURE                       R23 P15
       84 CAPTURE                          VAL R6
       85 CAPTURE                          VAL R7
       86 DUPTABLE                         R24 K20 [{"getPlaybackId", "getPlaybackContentId", "getEditorContentId", "isEditPlayback", "hasPlayer", "sampleClipPose", "refreshPreview", "applyPreviewMode", "resolvePoseOperation", "renderPreviewPose", "markPlayerReload", "reloadPlayer", "beginPlayer", "teardownPlayer", "destroy"}]
       87 SETTABLEKS                       R8 R24 K5 ["getPlaybackId"]
       89 SETTABLEKS                       R9 R24 K6 ["getPlaybackContentId"]
       91 SETTABLEKS                       R10 R24 K7 ["getEditorContentId"]
       93 SETTABLEKS                       R11 R24 K8 ["isEditPlayback"]
       95 SETTABLEKS                       R12 R24 K9 ["hasPlayer"]
       97 SETTABLEKS                       R13 R24 K10 ["sampleClipPose"]
       99 SETTABLEKS                       R15 R24 K11 ["refreshPreview"]
      101 SETTABLEKS                       R16 R24 K12 ["applyPreviewMode"]
      103 SETTABLEKS                       R17 R24 K13 ["resolvePoseOperation"]
      105 SETTABLEKS                       R18 R24 K14 ["renderPreviewPose"]
      107 SETTABLEKS                       R19 R24 K15 ["markPlayerReload"]
      109 SETTABLEKS                       R20 R24 K16 ["reloadPlayer"]
      111 SETTABLEKS                       R21 R24 K17 ["beginPlayer"]
      113 SETTABLEKS                       R22 R24 K18 ["teardownPlayer"]
      115 SETTABLEKS                       R23 R24 K19 ["destroy"]
      117 RETURN                           R24 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Remotes"]
       11 GETTABLEKS                       R2 R2 K7 ["AnimationGenRemotes"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Util"]
       18 GETTABLEKS                       R3 R3 K9 ["AnimationGen"]
       20 GETTABLEKS                       R3 R3 K10 ["State"]
       22 GETTABLEKS                       R3 R3 K11 ["AnimationPlayerParameters"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETTABLEKS                       R4 R0 K8 ["Util"]
       29 GETTABLEKS                       R4 R4 K9 ["AnimationGen"]
       31 GETTABLEKS                       R4 R4 K10 ["State"]
       33 GETTABLEKS                       R4 R4 K12 ["AnimationPlayerState"]
       35 CALL                             R3 1 1
       36 GETIMPORT                        R4 K5 [require]
       38 GETTABLEKS                       R5 R0 K8 ["Util"]
       40 GETTABLEKS                       R5 R5 K9 ["AnimationGen"]
       42 GETTABLEKS                       R5 R5 K13 ["Posing"]
       44 GETTABLEKS                       R5 R5 K14 ["ClipSampling"]
       46 CALL                             R4 1 1
       47 GETIMPORT                        R5 K5 [require]
       49 GETTABLEKS                       R6 R0 K15 ["Flags"]
       51 CALL                             R5 1 1
       52 GETIMPORT                        R6 K5 [require]
       54 GETTABLEKS                       R7 R0 K8 ["Util"]
       56 GETTABLEKS                       R7 R7 K9 ["AnimationGen"]
       58 GETTABLEKS                       R7 R7 K16 ["HostTypes"]
       60 CALL                             R6 1 1
       61 GETIMPORT                        R7 K5 [require]
       63 GETTABLEKS                       R8 R0 K8 ["Util"]
       65 GETTABLEKS                       R8 R8 K9 ["AnimationGen"]
       67 GETTABLEKS                       R8 R8 K13 ["Posing"]
       69 GETTABLEKS                       R8 R8 K17 ["bakeSavedPoseEdits"]
       71 CALL                             R7 1 1
       72 GETIMPORT                        R8 K5 [require]
       74 GETTABLEKS                       R9 R0 K8 ["Util"]
       76 GETTABLEKS                       R9 R9 K9 ["AnimationGen"]
       78 GETTABLEKS                       R9 R9 K13 ["Posing"]
       80 GETTABLEKS                       R9 R9 K18 ["buildKeyframeFromRigPose"]
       82 CALL                             R8 1 1
       83 GETIMPORT                        R9 K5 [require]
       85 GETTABLEKS                       R10 R0 K8 ["Util"]
       87 GETTABLEKS                       R10 R10 K9 ["AnimationGen"]
       89 GETTABLEKS                       R10 R10 K19 ["createHostAnimator"]
       91 CALL                             R9 1 1
       92 GETIMPORT                        R10 K5 [require]
       94 GETTABLEKS                       R11 R0 K8 ["Util"]
       96 GETTABLEKS                       R11 R11 K9 ["AnimationGen"]
       98 GETTABLEKS                       R11 R11 K20 ["createHostEditor"]
      100 CALL                             R10 1 1
      101 GETIMPORT                        R11 K5 [require]
      103 GETTABLEKS                       R12 R0 K8 ["Util"]
      105 GETTABLEKS                       R12 R12 K9 ["AnimationGen"]
      107 GETTABLEKS                       R12 R12 K21 ["createPoseSelection"]
      109 CALL                             R11 1 1
      110 GETIMPORT                        R12 K5 [require]
      112 GETTABLEKS                       R13 R0 K8 ["Util"]
      114 GETTABLEKS                       R13 R13 K9 ["AnimationGen"]
      116 GETTABLEKS                       R13 R13 K13 ["Posing"]
      118 GETTABLEKS                       R13 R13 K22 ["getRigJointTransforms"]
      120 CALL                             R12 1 1
      121 DUPCLOSURE                       R13 K23 [PROTO_0]
      122 DUPCLOSURE                       R14 K24 [PROTO_18]
      123 CAPTURE                          VAL R2
      124 CAPTURE                          VAL R4
      125 CAPTURE                          VAL R8
      126 CAPTURE                          VAL R7
      127 CAPTURE                          VAL R5
      128 CAPTURE                          VAL R12
      129 CAPTURE                          VAL R3
      130 RETURN                           R14 1
