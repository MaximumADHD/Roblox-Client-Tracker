PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["avatarsToAnimate"]
        3 GETTABLE                         R1 R2 R0
        4 JUMPIF                           R1 ; [+1]
        5 RETURN                           R0 0
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R2 R2 K1 ["terminate"]
        9 CALL                             R2 0 1
       10 GETTABLEKS                       R3 R1 K2 ["animationTrack"]
       12 JUMPIFNOT                        R3 ; [+9]
       13 NAMECALL                         R4 R3 K3 ["Stop"]
       15 CALL                             R4 1 0
       16 NAMECALL                         R4 R3 K4 ["Destroy"]
       18 CALL                             R4 1 0
       19 LOADNIL                          R4
       20 SETTABLEKS                       R4 R1 K2 ["animationTrack"]
       22 GETUPVAL                         R4 0
       23 GETTABLEKS                       R4 R4 K0 ["avatarsToAnimate"]
       25 LOADNIL                          R5
       26 SETTABLE                         R5 R4 R0
       27 GETIMPORT                        R4 K7 [table.clear]
       29 MOVE                             R5 R1
       30 CALL                             R4 1 0
       31 JUMPIFNOT                        R2 ; [+4]
       32 GETUPVAL                         R4 0
       33 GETTABLEKS                       R4 R4 K8 ["playAnimations"]
       35 CALL                             R4 0 0
       36 RETURN                           R0 0

PROTO_1:
        0 GETIMPORT                        R0 K2 [table.clear]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K3 ["avatarsToAnimate"]
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_2:
        0 LOADK                            R3 K0 ["Animator"]
        1 NAMECALL                         R1 R0 K1 ["FindFirstChildOfClass"]
        3 CALL                             R1 2 1
        4 JUMPIFNOT                        R1 ; [+5]
        5 GETUPVAL                         R4 0
        6 NAMECALL                         R2 R1 K2 ["IsDescendantOf"]
        8 CALL                             R2 2 1
        9 JUMPIF                           R2 ; [+1]
       10 RETURN                           R0 0
       11 LOADNIL                          R2
       12 GETUPVAL                         R3 1
       13 GETTABLEKS                       R3 R3 K3 ["currentAnimation"]
       15 GETTABLEKS                       R3 R3 K4 ["animationInstance"]
       17 JUMPIFNOT                        R3 ; [+11]
       18 GETUPVAL                         R3 2
       19 GETTABLEKS                       R3 R3 K5 ["LoadAnimation"]
       21 MOVE                             R4 R1
       22 GETUPVAL                         R5 1
       23 GETTABLEKS                       R5 R5 K3 ["currentAnimation"]
       25 GETTABLEKS                       R5 R5 K4 ["animationInstance"]
       27 CALL                             R3 2 1
       28 MOVE                             R2 R3
       29 JUMPIFNOT                        R2 ; [+3]
       30 NAMECALL                         R3 R2 K6 ["Play"]
       32 CALL                             R3 1 0
       33 GETUPVAL                         R3 1
       34 GETTABLEKS                       R3 R3 K7 ["avatarsToAnimate"]
       36 DUPTABLE                         R4 K12 [{["animator"], ["animationTrack"], ["lastTimeStamp"] = }]
       37 SETTABLEKS                       R1 R4 K8 ["animator"]
       39 SETTABLEKS                       R2 R4 K9 ["animationTrack"]
       41 SETTABLE                         R4 R3 R0
       42 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["terminate"]
        3 CALL                             R0 0 1
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R1 R1 K1 ["avatarsToAnimate"]
        7 LOADNIL                          R2
        8 LOADNIL                          R3
        9 FORGPREP                         R1
       10 JUMPIFNOT                        R5 ; [+49]
       11 GETTABLEKS                       R6 R5 K2 ["animationTrack"]
       13 JUMPIFNOT                        R6 ; [+13]
       14 GETTABLEKS                       R6 R5 K2 ["animationTrack"]
       16 NAMECALL                         R6 R6 K3 ["Stop"]
       18 CALL                             R6 1 0
       19 GETTABLEKS                       R6 R5 K2 ["animationTrack"]
       21 NAMECALL                         R6 R6 K4 ["Destroy"]
       23 CALL                             R6 1 0
       24 LOADNIL                          R6
       25 SETTABLEKS                       R6 R5 K2 ["animationTrack"]
       27 LOADNIL                          R6
       28 SETTABLEKS                       R6 R5 K5 ["lastTimeStamp"]
       30 GETUPVAL                         R6 0
       31 GETTABLEKS                       R6 R6 K6 ["currentAnimation"]
       33 GETTABLEKS                       R6 R6 K7 ["animationInstance"]
       35 JUMPIFNOT                        R6 ; [+24]
       36 GETTABLEKS                       R6 R5 K8 ["animator"]
       38 GETUPVAL                         R8 1
       39 NAMECALL                         R6 R6 K9 ["IsDescendantOf"]
       41 CALL                             R6 2 1
       42 JUMPIFNOT                        R6 ; [+17]
       43 GETUPVAL                         R6 2
       44 GETTABLEKS                       R6 R6 K10 ["LoadAnimation"]
       46 GETTABLEKS                       R7 R5 K8 ["animator"]
       48 GETUPVAL                         R8 0
       49 GETTABLEKS                       R8 R8 K6 ["currentAnimation"]
       51 GETTABLEKS                       R8 R8 K7 ["animationInstance"]
       53 CALL                             R6 2 1
       54 JUMPIFNOT                        R6 ; [+5]
       55 NAMECALL                         R7 R6 K11 ["Play"]
       57 CALL                             R7 1 0
       58 SETTABLEKS                       R6 R5 K2 ["animationTrack"]
       60 FORGLOOP                         R1 2 ; [-51]
       62 JUMPIFNOT                        R0 ; [+4]
       63 GETUPVAL                         R1 0
       64 GETTABLEKS                       R1 R1 K12 ["playAnimations"]
       66 CALL                             R1 0 0
       67 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["animationPlayingThread"]
        3 JUMPIFNOT                        R0 ; [+111]
        4 GETIMPORT                        R0 K3 [task.cancel]
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K0 ["animationPlayingThread"]
        9 CALL                             R0 1 0
       10 GETUPVAL                         R0 0
       11 LOADNIL                          R1
       12 SETTABLEKS                       R1 R0 K0 ["animationPlayingThread"]
       14 GETUPVAL                         R0 0
       15 GETTABLEKS                       R0 R0 K4 ["avatarsToAnimate"]
       17 LOADNIL                          R1
       18 LOADNIL                          R2
       19 FORGPREP                         R0
       20 JUMPIFNOT                        R4 ; [+90]
       21 GETTABLEKS                       R5 R4 K5 ["animationTrack"]
       23 GETTABLEKS                       R6 R4 K6 ["animator"]
       25 GETTABLEKS                       R6 R6 K7 ["Parent"]
       27 JUMPIFNOT                        R6 ; [+8]
       28 LOADK                            R10 K8 ["Humanoid"]
       29 NAMECALL                         R8 R6 K9 ["IsA"]
       31 CALL                             R8 2 1
       32 JUMPIFNOT                        R8 ; [+3]
       33 GETTABLEKS                       R7 R6 K7 ["Parent"]
       35 JUMP                             ; [+1]
       36 LOADNIL                          R7
       37 JUMPIFNOT                        R7 ; [+6]
       38 LOADK                            R10 K10 ["Model"]
       39 NAMECALL                         R8 R7 K9 ["IsA"]
       41 CALL                             R8 2 1
       42 JUMPIF                           R8 ; [+1]
       43 LOADNIL                          R7
       44 GETUPVAL                         R8 1
       45 CALL                             R8 0 1
       46 JUMPIFNOT                        R8 ; [+27]
       47 GETTABLEKS                       R8 R4 K6 ["animator"]
       49 NAMECALL                         R8 R8 K11 ["GetPlayingAnimationTracks"]
       51 CALL                             R8 1 3
       52 FORGPREP                         R8
       53 LOADN                            R15 0
       54 NAMECALL                         R13 R12 K12 ["Stop"]
       56 CALL                             R13 2 0
       57 FORGLOOP                         R8 2 ; [-5]
       59 JUMPIFNOT                        R7 ; [+3]
       60 GETUPVAL                         R8 2
       61 MOVE                             R9 R7
       62 CALL                             R8 1 0
       63 JUMPIFNOT                        R5 ; [+47]
       64 GETTABLEKS                       R8 R4 K6 ["animator"]
       66 LOADN                            R10 0
       67 NAMECALL                         R8 R8 K13 ["StepAnimations"]
       69 CALL                             R8 2 0
       70 NAMECALL                         R8 R5 K14 ["Play"]
       72 CALL                             R8 1 0
       73 JUMP                             ; [+37]
       74 JUMPIFNOT                        R5 ; [+13]
       75 LOADN                            R10 0
       76 NAMECALL                         R8 R5 K12 ["Stop"]
       78 CALL                             R8 2 0
       79 GETTABLEKS                       R8 R4 K6 ["animator"]
       81 LOADN                            R10 0
       82 NAMECALL                         R8 R8 K13 ["StepAnimations"]
       84 CALL                             R8 2 0
       85 NAMECALL                         R8 R5 K14 ["Play"]
       87 CALL                             R8 1 0
       88 JUMPIFNOT                        R7 ; [+22]
       89 GETIMPORT                        R8 K16 [pairs]
       91 NAMECALL                         R9 R7 K17 ["GetDescendants"]
       93 CALL                             R9 1 -1
       94 CALL                             R8 -1 3
       95 FORGPREP_NEXT                    R8
       96 LOADK                            R15 K18 ["Motor6D"]
       97 NAMECALL                         R13 R12 K9 ["IsA"]
       99 CALL                             R13 2 1
      100 JUMPIFNOT                        R13 ; [+8]
      101 LOADN                            R13 0
      102 SETTABLEKS                       R13 R12 K19 ["CurrentAngle"]
      104 GETIMPORT                        R13 K22 [CFrame.new]
      106 CALL                             R13 0 1
      107 SETTABLEKS                       R13 R12 K23 ["Transform"]
      109 FORGLOOP                         R8 2 ; [-14]
      111 FORGLOOP                         R0 2 ; [-92]
      113 LOADB                            R0 1
      114 RETURN                           R0 1
      115 LOADB                            R0 0
      116 RETURN                           R0 1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["stopCycling"]
        3 CALL                             R0 0 0
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K1 ["terminate"]
        7 CALL                             R0 0 0
        8 GETUPVAL                         R0 0
        9 GETTABLEKS                       R0 R0 K2 ["currentAnimation"]
       11 GETTABLEKS                       R0 R0 K3 ["animationInstance"]
       13 JUMPIFNOT                        R0 ; [+14]
       14 GETUPVAL                         R0 0
       15 GETTABLEKS                       R0 R0 K2 ["currentAnimation"]
       17 GETTABLEKS                       R0 R0 K3 ["animationInstance"]
       19 NAMECALL                         R0 R0 K4 ["Destroy"]
       21 CALL                             R0 1 0
       22 GETUPVAL                         R0 0
       23 GETTABLEKS                       R0 R0 K2 ["currentAnimation"]
       25 LOADNIL                          R1
       26 SETTABLEKS                       R1 R0 K3 ["animationInstance"]
       28 GETUPVAL                         R0 0
       29 GETTABLEKS                       R0 R0 K2 ["currentAnimation"]
       31 LOADN                            R1 0
       32 SETTABLEKS                       R1 R0 K5 ["animationId"]
       34 GETUPVAL                         R0 0
       35 GETTABLEKS                       R0 R0 K6 ["avatarsToAnimate"]
       37 LOADNIL                          R1
       38 LOADNIL                          R2
       39 FORGPREP                         R0
       40 JUMPIFNOT                        R4 ; [+44]
       41 GETTABLEKS                       R5 R4 K7 ["animator"]
       43 NAMECALL                         R5 R5 K8 ["GetPlayingAnimationTracks"]
       45 CALL                             R5 1 3
       46 FORGPREP                         R5
       47 LOADN                            R12 0
       48 NAMECALL                         R10 R9 K9 ["Stop"]
       50 CALL                             R10 2 0
       51 FORGLOOP                         R5 2 ; [-5]
       53 GETTABLEKS                       R5 R4 K7 ["animator"]
       55 GETTABLEKS                       R5 R5 K10 ["Parent"]
       57 JUMPIFNOT                        R5 ; [+8]
       58 LOADK                            R9 K11 ["Humanoid"]
       59 NAMECALL                         R7 R5 K12 ["IsA"]
       61 CALL                             R7 2 1
       62 JUMPIFNOT                        R7 ; [+3]
       63 GETTABLEKS                       R6 R5 K10 ["Parent"]
       65 JUMP                             ; [+1]
       66 LOADNIL                          R6
       67 JUMPIFNOT                        R6 ; [+17]
       68 LOADK                            R9 K13 ["Model"]
       69 NAMECALL                         R7 R6 K12 ["IsA"]
       71 CALL                             R7 2 1
       72 JUMPIFNOT                        R7 ; [+12]
       73 GETUPVAL                         R7 1
       74 MOVE                             R8 R6
       75 CALL                             R7 1 0
       76 GETTABLEKS                       R7 R4 K14 ["animationTrack"]
       78 JUMPIFNOT                        R7 ; [+6]
       79 GETTABLEKS                       R7 R4 K7 ["animator"]
       81 LOADN                            R9 0
       82 NAMECALL                         R7 R7 K15 ["StepAnimations"]
       84 CALL                             R7 2 0
       85 FORGLOOP                         R0 2 ; [-46]
       87 RETURN                           R0 0

PROTO_6:
        0 GETIMPORT                        R0 K2 [task.wait]
        2 CALL                             R0 0 0
        3 GETUPVAL                         R0 0
        4 GETTABLEKS                       R0 R0 K3 ["avatarsToAnimate"]
        6 LOADNIL                          R1
        7 LOADNIL                          R2
        8 FORGPREP                         R0
        9 JUMPIFNOT                        R4 ; [+26]
       10 GETTABLEKS                       R5 R4 K4 ["animationTrack"]
       12 JUMPIFNOT                        R5 ; [+23]
       13 GETTABLEKS                       R5 R4 K5 ["lastTimeStamp"]
       15 JUMPIF                           R5 ; [+6]
       16 GETIMPORT                        R5 K7 [tick]
       18 CALL                             R5 0 1
       19 SETTABLEKS                       R5 R4 K5 ["lastTimeStamp"]
       21 JUMP                             ; [+14]
       22 GETIMPORT                        R5 K7 [tick]
       24 CALL                             R5 0 1
       25 GETTABLEKS                       R7 R4 K5 ["lastTimeStamp"]
       27 SUB                              R6 R5 R7
       28 GETTABLEKS                       R7 R4 K8 ["animator"]
       30 MOVE                             R9 R6
       31 NAMECALL                         R7 R7 K9 ["StepAnimations"]
       33 CALL                             R7 2 0
       34 SETTABLEKS                       R5 R4 K5 ["lastTimeStamp"]
       36 FORGLOOP                         R0 2 ; [-28]
       38 JUMPBACK                         ; [-39]
       39 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["terminate"]
        3 CALL                             R0 0 0
        4 GETUPVAL                         R0 0
        5 GETIMPORT                        R1 K3 [task.spawn]
        7 DUPCLOSURE                       R2 K4 [PROTO_6]
        8 CAPTURE                          UPVAL U0
        9 CALL                             R1 1 1
       10 SETTABLEKS                       R1 R0 K5 ["animationPlayingThread"]
       12 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["currentAnimation"]
        3 GETTABLEKS                       R3 R3 K1 ["animationInstance"]
        5 JUMPIFNOT                        R3 ; [+14]
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R3 R3 K0 ["currentAnimation"]
        9 GETTABLEKS                       R3 R3 K1 ["animationInstance"]
       11 NAMECALL                         R3 R3 K2 ["Destroy"]
       13 CALL                             R3 1 0
       14 GETUPVAL                         R3 0
       15 GETTABLEKS                       R3 R3 K0 ["currentAnimation"]
       17 LOADNIL                          R4
       18 SETTABLEKS                       R4 R3 K1 ["animationInstance"]
       20 GETUPVAL                         R3 0
       21 GETTABLEKS                       R3 R3 K0 ["currentAnimation"]
       23 SETTABLEKS                       R0 R3 K3 ["animationId"]
       25 JUMPIFNOTEQKN                    R0 K4 [0] ; [+6]
       27 GETUPVAL                         R3 0
       28 GETTABLEKS                       R3 R3 K5 ["terminate"]
       30 CALL                             R3 0 0
       31 RETURN                           R0 0
       32 GETIMPORT                        R3 K8 [Instance.new]
       34 LOADK                            R4 K9 ["Animation"]
       35 CALL                             R3 1 1
       36 GETUPVAL                         R5 1
       37 GETTABLEKS                       R5 R5 K10 ["ANIMATIONID_PREFIX"]
       39 FASTCALL1                        TOSTRING R0 ; [+3]
       40 MOVE                             R7 R0
       41 GETIMPORT                        R6 K12 [tostring]
       43 CALL                             R6 1 1
       44 CONCAT                           R4 R5 R6
       45 SETTABLEKS                       R4 R3 K13 ["AnimationId"]
       47 GETUPVAL                         R4 0
       48 GETTABLEKS                       R4 R4 K0 ["currentAnimation"]
       50 SETTABLEKS                       R3 R4 K1 ["animationInstance"]
       52 JUMPIF                           R3 ; [+11]
       53 GETUPVAL                         R4 0
       54 GETTABLEKS                       R4 R4 K0 ["currentAnimation"]
       56 LOADN                            R5 0
       57 SETTABLEKS                       R5 R4 K3 ["animationId"]
       59 GETUPVAL                         R4 0
       60 GETTABLEKS                       R4 R4 K5 ["terminate"]
       62 CALL                             R4 0 0
       63 RETURN                           R0 0
       64 GETUPVAL                         R4 0
       65 GETTABLEKS                       R4 R4 K5 ["terminate"]
       67 CALL                             R4 0 1
       68 GETUPVAL                         R5 0
       69 GETTABLEKS                       R5 R5 K14 ["updateAvatars"]
       71 CALL                             R5 0 0
       72 JUMPIF                           R4 ; [+1]
       73 JUMPIFNOT                        R2 ; [+4]
       74 GETUPVAL                         R5 0
       75 GETTABLEKS                       R5 R5 K15 ["playAnimations"]
       77 CALL                             R5 0 0
       78 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Destroy"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["currentAnimation"]
        3 GETTABLEKS                       R2 R2 K1 ["animationInstance"]
        5 JUMPIFNOT                        R2 ; [+14]
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R2 R2 K0 ["currentAnimation"]
        9 GETTABLEKS                       R2 R2 K1 ["animationInstance"]
       11 NAMECALL                         R2 R2 K2 ["Destroy"]
       13 CALL                             R2 1 0
       14 GETUPVAL                         R2 0
       15 GETTABLEKS                       R2 R2 K0 ["currentAnimation"]
       17 LOADNIL                          R3
       18 SETTABLEKS                       R3 R2 K1 ["animationInstance"]
       20 GETUPVAL                         R2 0
       21 GETTABLEKS                       R2 R2 K0 ["currentAnimation"]
       23 SETTABLEKS                       R0 R2 K3 ["animationId"]
       25 JUMPIFNOTEQKN                    R0 K4 [0] ; [+6]
       27 GETUPVAL                         R2 0
       28 GETTABLEKS                       R2 R2 K5 ["terminate"]
       30 CALL                             R2 0 0
       31 RETURN                           R0 0
       32 GETIMPORT                        R2 K8 [Instance.new]
       34 LOADK                            R3 K9 ["Animation"]
       35 CALL                             R2 1 1
       36 GETUPVAL                         R4 1
       37 GETTABLEKS                       R4 R4 K10 ["ANIMATIONID_PREFIX"]
       39 FASTCALL1                        TOSTRING R0 ; [+3]
       40 MOVE                             R6 R0
       41 GETIMPORT                        R5 K12 [tostring]
       43 CALL                             R5 1 1
       44 CONCAT                           R3 R4 R5
       45 SETTABLEKS                       R3 R2 K13 ["AnimationId"]
       47 GETUPVAL                         R3 0
       48 GETTABLEKS                       R3 R3 K0 ["currentAnimation"]
       50 SETTABLEKS                       R2 R3 K1 ["animationInstance"]
       52 GETUPVAL                         R3 0
       53 GETTABLEKS                       R3 R3 K14 ["avatarsToAnimate"]
       55 LOADNIL                          R4
       56 LOADNIL                          R5
       57 FORGPREP                         R3
       58 JUMPIFNOT                        R7 ; [+34]
       59 GETTABLEKS                       R8 R7 K15 ["animator"]
       61 GETUPVAL                         R10 2
       62 NAMECALL                         R8 R8 K16 ["IsDescendantOf"]
       64 CALL                             R8 2 1
       65 JUMPIFNOT                        R8 ; [+27]
       66 GETTABLEKS                       R8 R7 K17 ["animationTrack"]
       68 GETUPVAL                         R9 3
       69 GETTABLEKS                       R9 R9 K18 ["LoadAnimation"]
       71 GETTABLEKS                       R10 R7 K15 ["animator"]
       73 MOVE                             R11 R2
       74 CALL                             R9 2 1
       75 JUMPIFNOT                        R9 ; [+6]
       76 MOVE                             R12 R1
       77 NAMECALL                         R10 R9 K19 ["Play"]
       79 CALL                             R10 2 0
       80 SETTABLEKS                       R9 R7 K17 ["animationTrack"]
       82 JUMPIFNOT                        R8 ; [+10]
       83 MOVE                             R12 R1
       84 NAMECALL                         R10 R8 K20 ["Stop"]
       86 CALL                             R10 2 0
       87 GETIMPORT                        R10 K23 [task.delay]
       89 MOVE                             R11 R1
       90 NEWCLOSURE                       R12 P0
       91 CAPTURE                          VAL R8
       92 CALL                             R10 2 0
       93 FORGLOOP                         R3 2 ; [-36]
       95 GETUPVAL                         R3 0
       96 GETTABLEKS                       R3 R3 K24 ["animationPlayingThread"]
       98 JUMPIF                           R3 ; [+4]
       99 GETUPVAL                         R3 0
      100 GETTABLEKS                       R3 R3 K25 ["playAnimations"]
      102 CALL                             R3 0 0
      103 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["cycleThread"]
        3 JUMPIFNOT                        R0 ; [+10]
        4 GETIMPORT                        R0 K3 [task.cancel]
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K0 ["cycleThread"]
        9 CALL                             R0 1 0
       10 GETUPVAL                         R0 0
       11 LOADNIL                          R1
       12 SETTABLEKS                       R1 R0 K0 ["cycleThread"]
       14 RETURN                           R0 0

PROTO_12:
        0 LOADN                            R0 1
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K0 ["setCurrentAnimationAsync"]
        4 GETUPVAL                         R3 1
        5 GETTABLE                         R2 R3 R0
        6 GETUPVAL                         R3 2
        7 LOADB                            R4 1
        8 CALL                             R1 3 0
        9 GETIMPORT                        R1 K3 [task.wait]
       11 GETUPVAL                         R2 3
       12 CALL                             R1 1 0
       13 ADDK                             R0 R0 K4 [1]
       14 GETUPVAL                         R2 1
       15 LENGTH                           R1 R2
       16 JUMPIFNOTLT                      R1 R0 ; [+2]
       18 LOADN                            R0 1
       19 GETUPVAL                         R1 0
       20 GETTABLEKS                       R1 R1 K5 ["crossfadeToAnimation"]
       22 GETUPVAL                         R3 1
       23 GETTABLE                         R2 R3 R0
       24 LOADK                            R3 K6 [0.3]
       25 CALL                             R1 2 0
       26 JUMPBACK                         ; [-18]
       27 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["stopCycling"]
        3 CALL                             R3 0 0
        4 LENGTH                           R3 R0
        5 JUMPIFNOTEQKN                    R3 K1 [0] ; [+6]
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R3 R3 K2 ["terminate"]
       10 CALL                             R3 0 0
       11 RETURN                           R0 0
       12 GETUPVAL                         R3 0
       13 GETIMPORT                        R4 K5 [task.spawn]
       15 NEWCLOSURE                       R5 P0
       16 CAPTURE                          UPVAL U0
       17 CAPTURE                          VAL R0
       18 CAPTURE                          VAL R1
       19 CAPTURE                          VAL R2
       20 CALL                             R4 1 1
       21 SETTABLEKS                       R4 R3 K6 ["cycleThread"]
       23 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["stopCycling"]
        3 CALL                             R0 0 0
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K1 ["setCurrentAnimationAsync"]
        7 LOADN                            R1 0
        8 CALL                             R0 1 0
        9 GETUPVAL                         R0 0
       10 GETTABLEKS                       R0 R0 K2 ["unloadAllAvatars"]
       12 CALL                             R0 0 0
       13 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarSettings"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [game]
        9 LOADK                            R3 K6 ["Workspace"]
       10 NAMECALL                         R1 R1 K7 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R3 R0 K10 ["Src"]
       17 GETTABLEKS                       R3 R3 K11 ["Util"]
       19 GETTABLEKS                       R3 R3 K12 ["Interfaces"]
       21 GETTABLEKS                       R3 R3 K13 ["AnimatorInterface"]
       23 CALL                             R2 1 1
       24 GETIMPORT                        R3 K9 [require]
       26 GETTABLEKS                       R4 R0 K10 ["Src"]
       28 GETTABLEKS                       R4 R4 K11 ["Util"]
       30 GETTABLEKS                       R4 R4 K14 ["Constants"]
       32 CALL                             R3 1 1
       33 GETIMPORT                        R4 K9 [require]
       35 GETTABLEKS                       R5 R0 K10 ["Src"]
       37 GETTABLEKS                       R5 R5 K11 ["Util"]
       39 GETTABLEKS                       R5 R5 K15 ["BridgingFiles"]
       41 GETTABLEKS                       R5 R5 K16 ["AssetDmFiles"]
       43 GETTABLEKS                       R5 R5 K17 ["assetDmTypes"]
       45 CALL                             R4 1 1
       46 GETIMPORT                        R5 K9 [require]
       48 GETTABLEKS                       R6 R0 K10 ["Src"]
       50 GETTABLEKS                       R6 R6 K18 ["Flags"]
       52 GETTABLEKS                       R6 R6 K19 ["getFFlagAvatarSettingsPreviewStandardWalkAnimation"]
       54 CALL                             R5 1 1
       55 GETIMPORT                        R6 K9 [require]
       57 GETTABLEKS                       R7 R0 K10 ["Src"]
       59 GETTABLEKS                       R7 R7 K11 ["Util"]
       61 GETTABLEKS                       R7 R7 K20 ["AvatarPreview"]
       63 GETTABLEKS                       R7 R7 K21 ["resetAvatarJointPose"]
       65 CALL                             R6 1 1
       66 DUPTABLE                         R7 K27 [{["animationPlayingThread"] = , ["cycleThread"] = , ["currentAnimation"], ["avatarsToAnimate"]}]
       67 DUPTABLE                         R8 K31 [{["animationInstance"] = , ["animationId"] = 0}]
       68 SETTABLEKS                       R8 R7 K25 ["currentAnimation"]
       70 NEWTABLE                         R8 0 0
       72 SETTABLEKS                       R8 R7 K26 ["avatarsToAnimate"]
       74 DUPCLOSURE                       R8 K32 [PROTO_0]
       75 CAPTURE                          VAL R7
       76 SETTABLEKS                       R8 R7 K33 ["unloadAvatar"]
       78 DUPCLOSURE                       R8 K34 [PROTO_1]
       79 CAPTURE                          VAL R7
       80 SETTABLEKS                       R8 R7 K35 ["unloadAllAvatars"]
       82 DUPCLOSURE                       R8 K36 [PROTO_2]
       83 CAPTURE                          VAL R1
       84 CAPTURE                          VAL R7
       85 CAPTURE                          VAL R2
       86 SETTABLEKS                       R8 R7 K37 ["loadAvatar"]
       88 DUPCLOSURE                       R8 K38 [PROTO_3]
       89 CAPTURE                          VAL R7
       90 CAPTURE                          VAL R1
       91 CAPTURE                          VAL R2
       92 SETTABLEKS                       R8 R7 K39 ["updateAvatars"]
       94 DUPCLOSURE                       R8 K40 [PROTO_4]
       95 CAPTURE                          VAL R7
       96 CAPTURE                          VAL R5
       97 CAPTURE                          VAL R6
       98 SETTABLEKS                       R8 R7 K41 ["terminate"]
      100 DUPCLOSURE                       R8 K42 [PROTO_5]
      101 CAPTURE                          VAL R7
      102 CAPTURE                          VAL R6
      103 SETTABLEKS                       R8 R7 K43 ["stopAndResetToRestPose"]
      105 DUPCLOSURE                       R8 K44 [PROTO_7]
      106 CAPTURE                          VAL R7
      107 SETTABLEKS                       R8 R7 K45 ["playAnimations"]
      109 DUPCLOSURE                       R8 K46 [PROTO_8]
      110 CAPTURE                          VAL R7
      111 CAPTURE                          VAL R3
      112 SETTABLEKS                       R8 R7 K47 ["setCurrentAnimationAsync"]
      114 DUPCLOSURE                       R8 K48 [PROTO_10]
      115 CAPTURE                          VAL R7
      116 CAPTURE                          VAL R3
      117 CAPTURE                          VAL R1
      118 CAPTURE                          VAL R2
      119 SETTABLEKS                       R8 R7 K49 ["crossfadeToAnimation"]
      121 DUPCLOSURE                       R8 K50 [PROTO_11]
      122 CAPTURE                          VAL R7
      123 SETTABLEKS                       R8 R7 K51 ["stopCycling"]
      125 DUPCLOSURE                       R8 K52 [PROTO_13]
      126 CAPTURE                          VAL R7
      127 SETTABLEKS                       R8 R7 K53 ["cycleAnimationsAsync"]
      129 DUPCLOSURE                       R8 K54 [PROTO_14]
      130 CAPTURE                          VAL R7
      131 SETTABLEKS                       R8 R7 K55 ["clearAllData"]
      133 RETURN                           R7 1
