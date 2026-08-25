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
       41 DUPTABLE                         R3 K12 [{["isPlaying"] = False, ["currentTime"] = 0, ["playbackSpeed"] = 1, [4] = , ["renderSteppedConnection"] = }]
       42 SETTABLE                         R3 R2 R0
       43 RETURN                           R0 0

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
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 JUMPIFNOT                        R1 ; [+5]
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K0 ["rig"]
        7 JUMPIFNOTEQ                      R0 R1 ; [+2]
        9 RETURN                           R0 0
       10 GETUPVAL                         R2 2
       11 GETUPVAL                         R3 3
       12 GETTABLE                         R1 R2 R3
       13 GETTABLEKS                       R2 R1 K1 ["loadedAnimation"]
       15 JUMPIFNOTEQKNIL                  R2 ; [+2]
       17 JUMP                             ; [+16]
       18 GETTABLEKS                       R2 R1 K1 ["loadedAnimation"]
       20 GETTABLEKS                       R2 R2 K2 ["ancestryChangedConnection"]
       22 NAMECALL                         R2 R2 K3 ["Disconnect"]
       24 CALL                             R2 1 0
       25 GETUPVAL                         R2 4
       26 GETTABLEKS                       R3 R1 K1 ["loadedAnimation"]
       28 GETTABLEKS                       R3 R3 K4 ["animator"]
       30 CALL                             R2 1 0
       31 LOADNIL                          R2
       32 SETTABLEKS                       R2 R1 K1 ["loadedAnimation"]
       34 GETTABLEKS                       R2 R1 K5 ["renderSteppedConnection"]
       36 JUMPIFEQKNIL                     R2 ; [+9]
       38 GETTABLEKS                       R2 R1 K5 ["renderSteppedConnection"]
       40 NAMECALL                         R2 R2 K3 ["Disconnect"]
       42 CALL                             R2 1 0
       43 LOADNIL                          R2
       44 SETTABLEKS                       R2 R1 K5 ["renderSteppedConnection"]
       46 LOADB                            R2 0
       47 SETTABLEKS                       R2 R1 K6 ["isPlaying"]
       49 GETUPVAL                         R2 1
       50 SETTABLEKS                       R0 R2 K0 ["rig"]
       52 GETUPVAL                         R2 1
       53 LOADB                            R3 1
       54 SETTABLEKS                       R3 R2 K7 ["needsReload"]
       56 GETUPVAL                         R2 5
       57 GETTABLEKS                       R2 R2 K8 ["rigSelected"]
       59 CALL                             R2 0 0
       60 RETURN                           R0 0

PROTO_13:
        0 GETTABLEKS                       R1 R0 K0 ["id"]
        2 GETUPVAL                         R3 0
        3 GETTABLE                         R2 R3 R1
        4 JUMPIFEQKNIL                     R2 ; [+37]
        6 GETTABLEKS                       R3 R2 K1 ["loadedAnimation"]
        8 JUMPIFNOTEQKNIL                  R3 ; [+2]
       10 JUMP                             ; [+16]
       11 GETTABLEKS                       R3 R2 K1 ["loadedAnimation"]
       13 GETTABLEKS                       R3 R3 K2 ["ancestryChangedConnection"]
       15 NAMECALL                         R3 R3 K3 ["Disconnect"]
       17 CALL                             R3 1 0
       18 GETUPVAL                         R3 1
       19 GETTABLEKS                       R4 R2 K1 ["loadedAnimation"]
       21 GETTABLEKS                       R4 R4 K4 ["animator"]
       23 CALL                             R3 1 0
       24 LOADNIL                          R3
       25 SETTABLEKS                       R3 R2 K1 ["loadedAnimation"]
       27 GETTABLEKS                       R3 R2 K5 ["renderSteppedConnection"]
       29 JUMPIFEQKNIL                     R3 ; [+9]
       31 GETTABLEKS                       R3 R2 K5 ["renderSteppedConnection"]
       33 NAMECALL                         R3 R3 K3 ["Disconnect"]
       35 CALL                             R3 1 0
       36 LOADNIL                          R3
       37 SETTABLEKS                       R3 R2 K5 ["renderSteppedConnection"]
       39 LOADB                            R3 0
       40 SETTABLEKS                       R3 R2 K6 ["isPlaying"]
       42 GETUPVAL                         R3 0
       43 DUPTABLE                         R4 K13 [{["isPlaying"] = False, ["currentTime"] = 0, ["playbackSpeed"] = 1, ["loadedAnimation"] = , ["renderSteppedConnection"] = }]
       44 SETTABLE                         R4 R3 R1
       45 GETUPVAL                         R3 2
       46 GETTABLE                         R2 R3 R1
       47 GETUPVAL                         R3 3
       48 JUMPIFEQKNIL                     R3 ; [+5]
       50 GETUPVAL                         R3 3
       51 NAMECALL                         R3 R3 K3 ["Disconnect"]
       53 CALL                             R3 1 0
       54 GETUPVAL                         R3 4
       55 NEWCLOSURE                       R5 P0
       56 CAPTURE                          UPVAL U5
       57 CAPTURE                          VAL R2
       58 CAPTURE                          UPVAL U0
       59 CAPTURE                          VAL R1
       60 CAPTURE                          UPVAL U1
       61 CAPTURE                          VAL R0
       62 NAMECALL                         R3 R3 K14 ["Connect"]
       64 CALL                             R3 2 1
       65 SETUPVAL                         R3 3
       66 RETURN                           R0 0

PROTO_14:
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
       17 SETTABLEKS                       R0 R3 K4 ["playbackSpeed"]
       19 GETTABLEKS                       R5 R3 K5 ["isPlaying"]
       21 JUMPIFNOT                        R5 ; [+5]
       22 GETUPVAL                         R5 2
       23 MOVE                             R6 R3
       24 GETTABLEKS                       R7 R4 K6 ["keyframeSequence"]
       26 CALL                             R5 2 0
       27 RETURN                           R0 0

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
        0 NEWTABLE                         R2 0 0
        2 LOADNIL                          R3
        3 NEWCLOSURE                       R4 P0
        4 CAPTURE                          VAL R2
        5 NEWCLOSURE                       R5 P1
        6 CAPTURE                          VAL R2
        7 CAPTURE                          UPVAL U0
        8 NEWCLOSURE                       R6 P2
        9 CAPTURE                          VAL R2
       10 CAPTURE                          VAL R1
       11 CAPTURE                          UPVAL U0
       12 CAPTURE                          UPVAL U1
       13 CAPTURE                          UPVAL U2
       14 NEWCLOSURE                       R7 P3
       15 CAPTURE                          VAL R2
       16 CAPTURE                          UPVAL U0
       17 CAPTURE                          VAL R1
       18 CAPTURE                          REF R3
       19 CAPTURE                          VAL R0
       20 CAPTURE                          UPVAL U3
       21 NEWCLOSURE                       R8 P4
       22 CAPTURE                          VAL R2
       23 CAPTURE                          VAL R1
       24 CAPTURE                          VAL R6
       25 CAPTURE                          UPVAL U4
       26 NEWCLOSURE                       R9 P5
       27 CAPTURE                          VAL R2
       28 CAPTURE                          VAL R1
       29 CAPTURE                          VAL R6
       30 CAPTURE                          UPVAL U5
       31 CAPTURE                          UPVAL U4
       32 NEWCLOSURE                       R10 P6
       33 CAPTURE                          VAL R2
       34 CAPTURE                          VAL R1
       35 CAPTURE                          UPVAL U4
       36 NEWCLOSURE                       R11 P7
       37 CAPTURE                          REF R3
       38 CAPTURE                          VAL R2
       39 CAPTURE                          UPVAL U0
       40 DUPTABLE                         R12 K5 [{"setAnimation", "setIsPlaying", "setCurrentTime", "setPlaybackSpeed", "destroy"}]
       41 SETTABLEKS                       R7 R12 K0 ["setAnimation"]
       43 SETTABLEKS                       R8 R12 K1 ["setIsPlaying"]
       45 SETTABLEKS                       R9 R12 K2 ["setCurrentTime"]
       47 SETTABLEKS                       R10 R12 K3 ["setPlaybackSpeed"]
       49 SETTABLEKS                       R11 R12 K4 ["destroy"]
       51 CLOSEUPVALS                      R3
       52 RETURN                           R12 1

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
       66 GETTABLEKS                       R10 R10 K20 ["isRig"]
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
       80 DUPCLOSURE                       R16 K27 [PROTO_18]
       81 CAPTURE                          VAL R8
       82 CAPTURE                          VAL R10
       83 CAPTURE                          VAL R0
       84 CAPTURE                          VAL R9
       85 CAPTURE                          VAL R15
       86 CAPTURE                          VAL R2
       87 RETURN                           R16 1
