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
        5 LOADK                            R4 K2 ["Workspace"]
        6 NAMECALL                         R2 R1 K3 ["FindFirstAncestor"]
        8 CALL                             R2 2 1
        9 JUMPIF                           R2 ; [+1]
       10 RETURN                           R0 0
       11 LOADNIL                          R2
       12 GETUPVAL                         R3 0
       13 GETTABLEKS                       R3 R3 K4 ["currentAnimation"]
       15 GETTABLEKS                       R3 R3 K5 ["animationInstance"]
       17 JUMPIFNOT                        R3 ; [+11]
       18 GETUPVAL                         R3 1
       19 GETTABLEKS                       R3 R3 K6 ["LoadAnimation"]
       21 MOVE                             R4 R1
       22 GETUPVAL                         R5 0
       23 GETTABLEKS                       R5 R5 K4 ["currentAnimation"]
       25 GETTABLEKS                       R5 R5 K5 ["animationInstance"]
       27 CALL                             R3 2 1
       28 MOVE                             R2 R3
       29 JUMPIFNOT                        R2 ; [+3]
       30 NAMECALL                         R3 R2 K7 ["Play"]
       32 CALL                             R3 1 0
       33 GETUPVAL                         R3 0
       34 GETTABLEKS                       R3 R3 K8 ["avatarsToAnimate"]
       36 DUPTABLE                         R4 K12 [{"animator", "animationTrack", "lastTimeStamp"}]
       37 SETTABLEKS                       R1 R4 K9 ["animator"]
       39 SETTABLEKS                       R2 R4 K10 ["animationTrack"]
       41 LOADNIL                          R5
       42 SETTABLEKS                       R5 R4 K11 ["lastTimeStamp"]
       44 SETTABLE                         R4 R3 R0
       45 RETURN                           R0 0

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
       38 LOADK                            R8 K9 ["Workspace"]
       39 NAMECALL                         R6 R6 K10 ["FindFirstAncestor"]
       41 CALL                             R6 2 1
       42 JUMPIFNOT                        R6 ; [+17]
       43 GETUPVAL                         R6 1
       44 GETTABLEKS                       R6 R6 K11 ["LoadAnimation"]
       46 GETTABLEKS                       R7 R5 K8 ["animator"]
       48 GETUPVAL                         R8 0
       49 GETTABLEKS                       R8 R8 K6 ["currentAnimation"]
       51 GETTABLEKS                       R8 R8 K7 ["animationInstance"]
       53 CALL                             R6 2 1
       54 JUMPIFNOT                        R6 ; [+5]
       55 NAMECALL                         R7 R6 K12 ["Play"]
       57 CALL                             R7 1 0
       58 SETTABLEKS                       R6 R5 K2 ["animationTrack"]
       60 FORGLOOP                         R1 2 ; [-51]
       62 JUMPIFNOT                        R0 ; [+4]
       63 GETUPVAL                         R1 0
       64 GETTABLEKS                       R1 R1 K13 ["playAnimations"]
       66 CALL                             R1 0 0
       67 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["animationPlayingThread"]
        3 JUMPIFNOT                        R0 ; [+77]
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
       20 JUMPIFNOT                        R4 ; [+56]
       21 GETTABLEKS                       R5 R4 K5 ["animationTrack"]
       23 JUMPIFNOT                        R5 ; [+13]
       24 LOADN                            R8 0
       25 NAMECALL                         R6 R5 K6 ["Stop"]
       27 CALL                             R6 2 0
       28 GETTABLEKS                       R6 R4 K7 ["animator"]
       30 LOADN                            R8 0
       31 NAMECALL                         R6 R6 K8 ["StepAnimations"]
       33 CALL                             R6 2 0
       34 NAMECALL                         R6 R5 K9 ["Play"]
       36 CALL                             R6 1 0
       37 GETTABLEKS                       R6 R4 K7 ["animator"]
       39 GETTABLEKS                       R6 R6 K10 ["Parent"]
       41 JUMPIFNOT                        R6 ; [+35]
       42 LOADK                            R9 K11 ["Humanoid"]
       43 NAMECALL                         R7 R6 K12 ["IsA"]
       45 CALL                             R7 2 1
       46 JUMPIFNOT                        R7 ; [+30]
       47 GETTABLEKS                       R7 R6 K10 ["Parent"]
       49 JUMPIFNOT                        R7 ; [+27]
       50 LOADK                            R10 K13 ["Model"]
       51 NAMECALL                         R8 R7 K12 ["IsA"]
       53 CALL                             R8 2 1
       54 JUMPIFNOT                        R8 ; [+22]
       55 GETIMPORT                        R8 K15 [pairs]
       57 NAMECALL                         R9 R7 K16 ["GetDescendants"]
       59 CALL                             R9 1 -1
       60 CALL                             R8 -1 3
       61 FORGPREP_NEXT                    R8
       62 LOADK                            R15 K17 ["Motor6D"]
       63 NAMECALL                         R13 R12 K12 ["IsA"]
       65 CALL                             R13 2 1
       66 JUMPIFNOT                        R13 ; [+8]
       67 LOADN                            R13 0
       68 SETTABLEKS                       R13 R12 K18 ["CurrentAngle"]
       70 GETIMPORT                        R13 K21 [CFrame.new]
       72 CALL                             R13 0 1
       73 SETTABLEKS                       R13 R12 K22 ["Transform"]
       75 FORGLOOP                         R8 2 ; [-14]
       77 FORGLOOP                         R0 2 ; [-58]
       79 LOADB                            R0 1
       80 RETURN                           R0 1
       81 LOADB                            R0 0
       82 RETURN                           R0 1

PROTO_5:
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

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["terminate"]
        3 CALL                             R0 0 0
        4 GETUPVAL                         R0 0
        5 GETIMPORT                        R1 K3 [task.spawn]
        7 DUPCLOSURE                       R2 K4 [PROTO_5]
        8 CAPTURE                          UPVAL U0
        9 CALL                             R1 1 1
       10 SETTABLEKS                       R1 R0 K5 ["animationPlayingThread"]
       12 RETURN                           R0 0

PROTO_7:
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

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["setCurrentAnimationAsync"]
        3 LOADN                            R1 0
        4 CALL                             R0 1 0
        5 GETUPVAL                         R0 0
        6 GETTABLEKS                       R0 R0 K1 ["unloadAllAvatars"]
        8 CALL                             R0 0 0
        9 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarSettings"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Util"]
       13 GETTABLEKS                       R2 R2 K8 ["Interfaces"]
       15 GETTABLEKS                       R2 R2 K9 ["AnimatorInterface"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K5 [require]
       20 GETTABLEKS                       R3 R0 K6 ["Src"]
       22 GETTABLEKS                       R3 R3 K7 ["Util"]
       24 GETTABLEKS                       R3 R3 K10 ["Constants"]
       26 CALL                             R2 1 1
       27 GETIMPORT                        R3 K5 [require]
       29 GETTABLEKS                       R4 R0 K6 ["Src"]
       31 GETTABLEKS                       R4 R4 K7 ["Util"]
       33 GETTABLEKS                       R4 R4 K11 ["BridgingFiles"]
       35 GETTABLEKS                       R4 R4 K12 ["AssetDmFiles"]
       37 GETTABLEKS                       R4 R4 K13 ["assetDmTypes"]
       39 CALL                             R3 1 1
       40 DUPTABLE                         R4 K17 [{"animationPlayingThread", "currentAnimation", "avatarsToAnimate"}]
       41 LOADNIL                          R5
       42 SETTABLEKS                       R5 R4 K14 ["animationPlayingThread"]
       44 DUPTABLE                         R5 K20 [{"animationInstance", "animationId"}]
       45 LOADNIL                          R6
       46 SETTABLEKS                       R6 R5 K18 ["animationInstance"]
       48 LOADN                            R6 0
       49 SETTABLEKS                       R6 R5 K19 ["animationId"]
       51 SETTABLEKS                       R5 R4 K15 ["currentAnimation"]
       53 NEWTABLE                         R5 0 0
       55 SETTABLEKS                       R5 R4 K16 ["avatarsToAnimate"]
       57 DUPCLOSURE                       R5 K21 [PROTO_0]
       58 CAPTURE                          VAL R4
       59 SETTABLEKS                       R5 R4 K22 ["unloadAvatar"]
       61 DUPCLOSURE                       R5 K23 [PROTO_1]
       62 CAPTURE                          VAL R4
       63 SETTABLEKS                       R5 R4 K24 ["unloadAllAvatars"]
       65 DUPCLOSURE                       R5 K25 [PROTO_2]
       66 CAPTURE                          VAL R4
       67 CAPTURE                          VAL R1
       68 SETTABLEKS                       R5 R4 K26 ["loadAvatar"]
       70 DUPCLOSURE                       R5 K27 [PROTO_3]
       71 CAPTURE                          VAL R4
       72 CAPTURE                          VAL R1
       73 SETTABLEKS                       R5 R4 K28 ["updateAvatars"]
       75 DUPCLOSURE                       R5 K29 [PROTO_4]
       76 CAPTURE                          VAL R4
       77 SETTABLEKS                       R5 R4 K30 ["terminate"]
       79 DUPCLOSURE                       R5 K31 [PROTO_6]
       80 CAPTURE                          VAL R4
       81 SETTABLEKS                       R5 R4 K32 ["playAnimations"]
       83 DUPCLOSURE                       R5 K33 [PROTO_7]
       84 CAPTURE                          VAL R4
       85 CAPTURE                          VAL R2
       86 SETTABLEKS                       R5 R4 K34 ["setCurrentAnimationAsync"]
       88 DUPCLOSURE                       R5 K35 [PROTO_8]
       89 CAPTURE                          VAL R4
       90 SETTABLEKS                       R5 R4 K36 ["clearAllData"]
       92 RETURN                           R4 1
