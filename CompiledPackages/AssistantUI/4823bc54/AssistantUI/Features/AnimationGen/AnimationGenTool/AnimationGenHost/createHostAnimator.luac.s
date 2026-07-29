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
       12 JUMPIF                           R0 ; [+32]
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
       40 GETTABLEKS                       R0 R0 K7 ["bridge"]
       42 GETTABLEKS                       R0 R0 K8 ["animatorRemoved"]
       44 CALL                             R0 0 0
       45 RETURN                           R0 0

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
       57 LOADK                            R12 K12 ["Animator"]
       58 NAMECALL                         R10 R8 K6 ["FindFirstChildOfClass"]
       60 CALL                             R10 2 1
       61 JUMPIFEQKNIL                     R10 ; [+4]
       63 NAMECALL                         R11 R10 K13 ["Destroy"]
       65 CALL                             R11 1 0
       66 GETIMPORT                        R11 K16 [Instance.new]
       68 LOADK                            R12 K12 ["Animator"]
       69 CALL                             R11 1 1
       70 SETTABLEKS                       R8 R11 K17 ["Parent"]
       72 MOVE                             R9 R11
       73 GETIMPORT                        R10 K16 [Instance.new]
       75 LOADK                            R11 K18 ["Animation"]
       76 CALL                             R10 1 1
       77 GETUPVAL                         R11 3
       78 MOVE                             R13 R5
       79 NAMECALL                         R11 R11 K19 ["RegisterKeyframeSequence"]
       81 CALL                             R11 2 1
       82 SETTABLEKS                       R11 R10 K20 ["AnimationId"]
       84 GETIMPORT                        R11 K22 [pcall]
       86 NEWCLOSURE                       R12 P0
       87 CAPTURE                          VAL R9
       88 CAPTURE                          VAL R10
       89 CALL                             R11 1 2
       90 JUMPIF                           R11 ; [+4]
       91 GETIMPORT                        R13 K24 [error]
       93 MOVE                             R14 R12
       94 CALL                             R13 1 0
       95 GETIMPORT                        R13 K28 [Enum.AnimationPriority.Action4]
       97 SETTABLEKS                       R13 R12 K29 ["Priority"]
       99 LOADB                            R13 1
      100 SETTABLEKS                       R13 R12 K30 ["Looped"]
      102 LOADN                            R15 0
      103 LOADN                            R16 1
      104 LOADN                            R17 0
      105 NAMECALL                         R13 R12 K31 ["Play"]
      107 CALL                             R13 4 0
      108 LOADNIL                          R13
      109 GETTABLEKS                       R14 R9 K32 ["AncestryChanged"]
      111 NEWCLOSURE                       R16 P1
      112 CAPTURE                          VAL R3
      113 CAPTURE                          VAL R9
      114 CAPTURE                          VAL R2
      115 CAPTURE                          UPVAL U2
      116 CAPTURE                          VAL R1
      117 NAMECALL                         R14 R14 K33 ["Connect"]
      119 CALL                             R14 2 1
      120 MOVE                             R13 R14
      121 DUPTABLE                         R14 K35 [{"animationTrack", "animator", "ancestryChangedConnection"}]
      122 SETTABLEKS                       R12 R14 K34 ["animationTrack"]
      124 SETTABLEKS                       R9 R14 K11 ["animator"]
      126 SETTABLEKS                       R13 R14 K9 ["ancestryChangedConnection"]
      128 SETTABLEKS                       R14 R2 K8 ["loadedAnimation"]
      130 LOADB                            R14 0
      131 SETTABLEKS                       R14 R3 K36 ["needsReload"]
      133 RETURN                           R0 0

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
       57 GETTABLEKS                       R2 R2 K8 ["bridge"]
       59 GETTABLEKS                       R2 R2 K9 ["rigSelected"]
       61 CALL                             R2 0 0
       62 RETURN                           R0 0

PROTO_13:
        0 GETTABLEKS                       R1 R0 K0 ["callArgs"]
        2 GETTABLEKS                       R1 R1 K1 ["contentId"]
        4 GETUPVAL                         R3 0
        5 GETTABLE                         R2 R3 R1
        6 JUMPIFEQKNIL                     R2 ; [+37]
        8 GETTABLEKS                       R3 R2 K2 ["loadedAnimation"]
       10 JUMPIFNOTEQKNIL                  R3 ; [+2]
       12 JUMP                             ; [+16]
       13 GETTABLEKS                       R3 R2 K2 ["loadedAnimation"]
       15 GETTABLEKS                       R3 R3 K3 ["ancestryChangedConnection"]
       17 NAMECALL                         R3 R3 K4 ["Disconnect"]
       19 CALL                             R3 1 0
       20 GETUPVAL                         R3 1
       21 GETTABLEKS                       R4 R2 K2 ["loadedAnimation"]
       23 GETTABLEKS                       R4 R4 K5 ["animator"]
       25 CALL                             R3 1 0
       26 LOADNIL                          R3
       27 SETTABLEKS                       R3 R2 K2 ["loadedAnimation"]
       29 GETTABLEKS                       R3 R2 K6 ["renderSteppedConnection"]
       31 JUMPIFEQKNIL                     R3 ; [+9]
       33 GETTABLEKS                       R3 R2 K6 ["renderSteppedConnection"]
       35 NAMECALL                         R3 R3 K4 ["Disconnect"]
       37 CALL                             R3 1 0
       38 LOADNIL                          R3
       39 SETTABLEKS                       R3 R2 K6 ["renderSteppedConnection"]
       41 LOADB                            R3 0
       42 SETTABLEKS                       R3 R2 K7 ["isPlaying"]
       44 GETUPVAL                         R3 0
       45 DUPTABLE                         R4 K14 [{["isPlaying"] = False, ["currentTime"] = 0, ["playbackSpeed"] = 1, ["loadedAnimation"] = , ["renderSteppedConnection"] = }]
       46 SETTABLE                         R4 R3 R1
       47 GETUPVAL                         R3 2
       48 GETTABLE                         R2 R3 R1
       49 GETUPVAL                         R3 3
       50 JUMPIFEQKNIL                     R3 ; [+5]
       52 GETUPVAL                         R3 3
       53 NAMECALL                         R3 R3 K4 ["Disconnect"]
       55 CALL                             R3 1 0
       56 GETUPVAL                         R3 4
       57 NEWCLOSURE                       R5 P0
       58 CAPTURE                          UPVAL U5
       59 CAPTURE                          VAL R2
       60 CAPTURE                          UPVAL U0
       61 CAPTURE                          VAL R1
       62 CAPTURE                          UPVAL U1
       63 CAPTURE                          VAL R0
       64 NAMECALL                         R3 R3 K15 ["Connect"]
       66 CALL                             R3 2 1
       67 SETUPVAL                         R3 3
       68 RETURN                           R0 0

PROTO_14:
        0 GETTABLEKS                       R2 R1 K0 ["callArgs"]
        2 GETTABLEKS                       R2 R2 K1 ["contentId"]
        4 GETUPVAL                         R5 0
        5 GETTABLE                         R4 R5 R2
        6 JUMPIFNOTEQKNIL                  R4 ; [+2]
        8 LOADB                            R6 0 +1
        9 LOADB                            R6 1
       10 FASTCALL2K                       ASSERT R6 K2 ; [+4]
       12 LOADK                            R7 K2 ["No playback state found"]
       13 GETIMPORT                        R5 K4 [assert]
       15 CALL                             R5 2 0
       16 MOVE                             R3 R4
       17 GETUPVAL                         R5 1
       18 GETTABLE                         R4 R5 R2
       19 JUMPIFNOT                        R0 ; [+13]
       20 GETTABLEKS                       R5 R4 K5 ["needsReload"]
       22 JUMPIFNOT                        R5 ; [+4]
       23 GETUPVAL                         R5 2
       24 MOVE                             R6 R2
       25 MOVE                             R7 R1
       26 CALL                             R5 2 0
       27 GETUPVAL                         R5 3
       28 MOVE                             R6 R3
       29 GETTABLEKS                       R7 R4 K6 ["keyframeSequence"]
       31 CALL                             R5 2 0
       32 RETURN                           R0 0
       33 GETTABLEKS                       R5 R3 K7 ["renderSteppedConnection"]
       35 JUMPIFEQKNIL                     R5 ; [+9]
       37 GETTABLEKS                       R5 R3 K7 ["renderSteppedConnection"]
       39 NAMECALL                         R5 R5 K8 ["Disconnect"]
       41 CALL                             R5 1 0
       42 LOADNIL                          R5
       43 SETTABLEKS                       R5 R3 K7 ["renderSteppedConnection"]
       45 LOADB                            R5 0
       46 SETTABLEKS                       R5 R3 K9 ["isPlaying"]
       48 RETURN                           R0 0

PROTO_15:
        0 GETTABLEKS                       R2 R1 K0 ["callArgs"]
        2 GETTABLEKS                       R2 R2 K1 ["contentId"]
        4 GETUPVAL                         R5 0
        5 GETTABLE                         R4 R5 R2
        6 JUMPIFNOTEQKNIL                  R4 ; [+2]
        8 LOADB                            R6 0 +1
        9 LOADB                            R6 1
       10 FASTCALL2K                       ASSERT R6 K2 ; [+4]
       12 LOADK                            R7 K2 ["No playback state found"]
       13 GETIMPORT                        R5 K4 [assert]
       15 CALL                             R5 2 0
       16 MOVE                             R3 R4
       17 GETUPVAL                         R5 1
       18 GETTABLE                         R4 R5 R2
       19 SETTABLEKS                       R0 R3 K5 ["currentTime"]
       21 GETTABLEKS                       R5 R4 K6 ["needsReload"]
       23 JUMPIFNOT                        R5 ; [+4]
       24 GETUPVAL                         R5 2
       25 MOVE                             R6 R2
       26 MOVE                             R7 R1
       27 CALL                             R5 2 0
       28 GETTABLEKS                       R5 R3 K7 ["loadedAnimation"]
       30 JUMPIFEQKNIL                     R5 ; [+20]
       32 GETTABLEKS                       R5 R3 K7 ["loadedAnimation"]
       34 GETTABLEKS                       R5 R5 K8 ["animationTrack"]
       36 SETTABLEKS                       R0 R5 K9 ["TimePosition"]
       38 GETUPVAL                         R5 3
       39 NAMECALL                         R5 R5 K10 ["IsRunning"]
       41 CALL                             R5 1 1
       42 JUMPIF                           R5 ; [+8]
       43 GETTABLEKS                       R5 R3 K7 ["loadedAnimation"]
       45 GETTABLEKS                       R5 R5 K11 ["animator"]
       47 LOADN                            R7 0
       48 NAMECALL                         R5 R5 K12 ["StepAnimations"]
       50 CALL                             R5 2 0
       51 GETTABLEKS                       R5 R3 K13 ["isPlaying"]
       53 JUMPIFNOT                        R5 ; [+5]
       54 GETUPVAL                         R5 4
       55 MOVE                             R6 R3
       56 GETTABLEKS                       R7 R4 K14 ["keyframeSequence"]
       58 CALL                             R5 2 0
       59 RETURN                           R0 0

PROTO_16:
        0 GETTABLEKS                       R2 R1 K0 ["callArgs"]
        2 GETTABLEKS                       R2 R2 K1 ["contentId"]
        4 GETUPVAL                         R5 0
        5 GETTABLE                         R4 R5 R2
        6 JUMPIFNOTEQKNIL                  R4 ; [+2]
        8 LOADB                            R6 0 +1
        9 LOADB                            R6 1
       10 FASTCALL2K                       ASSERT R6 K2 ; [+4]
       12 LOADK                            R7 K2 ["No playback state found"]
       13 GETIMPORT                        R5 K4 [assert]
       15 CALL                             R5 2 0
       16 MOVE                             R3 R4
       17 GETUPVAL                         R5 1
       18 GETTABLE                         R4 R5 R2
       19 SETTABLEKS                       R0 R3 K5 ["playbackSpeed"]
       21 GETTABLEKS                       R5 R3 K6 ["isPlaying"]
       23 JUMPIFNOT                        R5 ; [+5]
       24 GETUPVAL                         R5 2
       25 MOVE                             R6 R3
       26 GETTABLEKS                       R7 R4 K7 ["keyframeSequence"]
       28 CALL                             R5 2 0
       29 RETURN                           R0 0

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
       13 NEWCLOSURE                       R7 P3
       14 CAPTURE                          VAL R2
       15 CAPTURE                          UPVAL U0
       16 CAPTURE                          VAL R1
       17 CAPTURE                          REF R3
       18 CAPTURE                          VAL R0
       19 CAPTURE                          UPVAL U2
       20 NEWCLOSURE                       R8 P4
       21 CAPTURE                          VAL R2
       22 CAPTURE                          VAL R1
       23 CAPTURE                          VAL R6
       24 CAPTURE                          UPVAL U3
       25 NEWCLOSURE                       R9 P5
       26 CAPTURE                          VAL R2
       27 CAPTURE                          VAL R1
       28 CAPTURE                          VAL R6
       29 CAPTURE                          UPVAL U4
       30 CAPTURE                          UPVAL U3
       31 NEWCLOSURE                       R10 P6
       32 CAPTURE                          VAL R2
       33 CAPTURE                          VAL R1
       34 CAPTURE                          UPVAL U3
       35 NEWCLOSURE                       R11 P7
       36 CAPTURE                          REF R3
       37 CAPTURE                          VAL R2
       38 CAPTURE                          UPVAL U0
       39 DUPTABLE                         R12 K5 [{"setAnimation", "setIsPlaying", "setCurrentTime", "setPlaybackSpeed", "destroy"}]
       40 SETTABLEKS                       R7 R12 K0 ["setAnimation"]
       42 SETTABLEKS                       R8 R12 K1 ["setIsPlaying"]
       44 SETTABLEKS                       R9 R12 K2 ["setCurrentTime"]
       46 SETTABLEKS                       R10 R12 K3 ["setPlaybackSpeed"]
       48 SETTABLEKS                       R11 R12 K4 ["destroy"]
       50 CLOSEUPVALS                      R3
       51 RETURN                           R12 1

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
       27 GETTABLEKS                       R5 R2 K12 ["Parent"]
       29 GETTABLEKS                       R5 R5 K13 ["Signal"]
       31 CALL                             R4 1 1
       32 GETIMPORT                        R5 K11 [require]
       34 GETTABLEKS                       R6 R3 K14 ["AnimationGenTool"]
       36 GETTABLEKS                       R6 R6 K15 ["AnimationGenBridgeTypes"]
       38 CALL                             R5 1 1
       39 GETIMPORT                        R6 K11 [require]
       41 GETTABLEKS                       R7 R3 K14 ["AnimationGenTool"]
       43 GETTABLEKS                       R7 R7 K16 ["AnimationGenHost"]
       45 GETTABLEKS                       R7 R7 K17 ["HostTypes"]
       47 CALL                             R6 1 1
       48 GETIMPORT                        R7 K11 [require]
       50 GETTABLEKS                       R8 R2 K18 ["Types"]
       52 CALL                             R7 1 1
       53 GETIMPORT                        R8 K11 [require]
       55 GETTABLEKS                       R9 R3 K14 ["AnimationGenTool"]
       57 GETTABLEKS                       R9 R9 K19 ["Util"]
       59 GETTABLEKS                       R9 R9 K20 ["clearAnimationPose"]
       61 CALL                             R8 1 1
       62 GETIMPORT                        R9 K11 [require]
       64 GETTABLEKS                       R10 R3 K14 ["AnimationGenTool"]
       66 GETTABLEKS                       R10 R10 K19 ["Util"]
       68 GETTABLEKS                       R10 R10 K21 ["isRig"]
       70 CALL                             R9 1 1
       71 DUPCLOSURE                       R10 K22 [PROTO_0]
       72 DUPCLOSURE                       R11 K23 [PROTO_1]
       73 DUPCLOSURE                       R12 K24 [PROTO_2]
       74 DUPCLOSURE                       R13 K25 [PROTO_3]
       75 CAPTURE                          VAL R8
       76 DUPCLOSURE                       R14 K26 [PROTO_4]
       77 CAPTURE                          VAL R8
       78 DUPCLOSURE                       R15 K27 [PROTO_6]
       79 CAPTURE                          VAL R1
       80 DUPCLOSURE                       R16 K28 [PROTO_18]
       81 CAPTURE                          VAL R8
       82 CAPTURE                          VAL R0
       83 CAPTURE                          VAL R9
       84 CAPTURE                          VAL R15
       85 CAPTURE                          VAL R1
       86 RETURN                           R16 1
