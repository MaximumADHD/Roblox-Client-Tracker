PROTO_0:
        0 LOADK                            R3 K0 ["Humanoid"]
        1 NAMECALL                         R1 R0 K1 ["FindFirstChildWhichIsA"]
        3 CALL                             R1 2 1
        4 LOADK                            R4 K2 ["AnimationController"]
        5 NAMECALL                         R2 R0 K1 ["FindFirstChildWhichIsA"]
        7 CALL                             R2 2 1
        8 OR                               R3 R1 R2
        9 JUMPIFNOTEQKNIL                  R3 ; [+2]
       11 LOADB                            R5 0 +1
       12 LOADB                            R5 1
       13 FASTCALL2K                       ASSERT R5 K3 ; [+4]
       15 LOADK                            R6 K3 ["AnimateTarget must have either a Humanoid or an AnimationController"]
       16 GETIMPORT                        R4 K5 [assert]
       18 CALL                             R4 2 0
       19 LOADK                            R6 K6 ["Animator"]
       20 NAMECALL                         R4 R3 K1 ["FindFirstChildWhichIsA"]
       22 CALL                             R4 2 1
       23 JUMPIFNOTEQKNIL                  R4 ; [+8]
       25 GETIMPORT                        R5 K9 [Instance.new]
       27 LOADK                            R6 K6 ["Animator"]
       28 CALL                             R5 1 1
       29 MOVE                             R4 R5
       30 SETTABLEKS                       R3 R4 K10 ["Parent"]
       32 RETURN                           R4 1

PROTO_1:
        0 NAMECALL                         R1 R0 K0 ["GetDescendants"]
        2 CALL                             R1 1 3
        3 FORGPREP                         R1
        4 LOADK                            R8 K1 ["Motor6D"]
        5 NAMECALL                         R6 R5 K2 ["IsA"]
        7 CALL                             R6 2 1
        8 JUMPIFNOT                        R6 ; [+9]
        9 LOADN                            R6 0
       10 SETTABLEKS                       R6 R5 K3 ["CurrentAngle"]
       12 GETIMPORT                        R6 K6 [CFrame.new]
       14 CALL                             R6 0 1
       15 SETTABLEKS                       R6 R5 K7 ["Transform"]
       17 JUMP                             ; [+29]
       18 GETUPVAL                         R6 0
       19 CALL                             R6 0 1
       20 JUMPIFNOT                        R6 ; [+11]
       21 LOADK                            R8 K8 ["AnimationConstraint"]
       22 NAMECALL                         R6 R5 K2 ["IsA"]
       24 CALL                             R6 2 1
       25 JUMPIFNOT                        R6 ; [+6]
       26 GETIMPORT                        R6 K6 [CFrame.new]
       28 CALL                             R6 0 1
       29 SETTABLEKS                       R6 R5 K7 ["Transform"]
       31 JUMP                             ; [+15]
       32 LOADK                            R8 K9 ["FaceControls"]
       33 NAMECALL                         R6 R5 K2 ["IsA"]
       35 CALL                             R6 2 1
       36 JUMPIFNOT                        R6 ; [+10]
       37 GETUPVAL                         R6 1
       38 GETTABLEKS                       R6 R6 K10 ["FACE_CONTROLS_PROPERTIES"]
       40 LOADNIL                          R7
       41 LOADNIL                          R8
       42 FORGPREP                         R6
       43 LOADN                            R11 0
       44 SETTABLE                         R11 R5 R10
       45 FORGLOOP                         R6 2 ; [-3]
       47 FORGLOOP                         R1 2 ; [-44]
       49 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 NAMECALL                         R2 R2 K0 ["IsRunning"]
        3 CALL                             R2 1 1
        4 JUMPIFNOT                        R2 ; [+1]
        5 RETURN                           R0 0
        6 MOVE                             R4 R1
        7 NAMECALL                         R2 R0 K1 ["StepAnimations"]
        9 CALL                             R2 2 0
       10 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETIMPORT                        R2 K1 [game]
        3 NAMECALL                         R0 R0 K2 ["IsDescendantOf"]
        5 CALL                             R0 2 1
        6 JUMPIFNOT                        R0 ; [+4]
        7 GETUPVAL                         R0 1
        8 GETUPVAL                         R1 0
        9 CALL                             R0 1 0
       10 RETURN                           R0 0
       11 GETUPVAL                         R0 1
       12 LOADNIL                          R1
       13 CALL                             R0 1 0
       14 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOTEQKNIL                  R0 ; [+6]
        3 GETUPVAL                         R0 1
        4 LOADNIL                          R1
        5 CALL                             R0 1 0
        6 LOADNIL                          R0
        7 RETURN                           R0 1
        8 GETUPVAL                         R2 0
        9 JUMPIFNOTEQKNIL                  R2 ; [+2]
       11 LOADB                            R1 0 +1
       12 LOADB                            R1 1
       13 GETUPVAL                         R2 2
       14 GETTABLEKS                       R2 R2 K0 ["LUAU_ANALYZE_ERROR"]
       16 FASTCALL2                        ASSERT R1 R2 ; [+3]
       18 GETIMPORT                        R0 K2 [assert]
       20 CALL                             R0 2 0
       21 GETUPVAL                         R0 0
       22 GETIMPORT                        R2 K4 [game]
       24 NAMECALL                         R0 R0 K5 ["IsDescendantOf"]
       26 CALL                             R0 2 1
       27 JUMPIFNOT                        R0 ; [+5]
       28 GETUPVAL                         R0 1
       29 GETUPVAL                         R1 0
       30 CALL                             R0 1 0
       31 LOADNIL                          R0
       32 RETURN                           R0 1
       33 GETUPVAL                         R0 0
       34 GETTABLEKS                       R0 R0 K6 ["AncestryChanged"]
       36 NEWCLOSURE                       R2 P0
       37 CAPTURE                          UPVAL U0
       38 CAPTURE                          UPVAL U1
       39 NAMECALL                         R0 R0 K7 ["Connect"]
       41 CALL                             R0 2 1
       42 NEWCLOSURE                       R1 P1
       43 CAPTURE                          VAL R0
       44 RETURN                           R1 1

PROTO_6:
        0 GETUPVAL                         R0 0
        1 NEWTABLE                         R2 0 1
        3 GETUPVAL                         R3 1
        4 SETLIST                          R2 R3 1 [1]
        6 NAMECALL                         R0 R0 K0 ["PreloadAsync"]
        8 CALL                             R0 2 0
        9 GETUPVAL                         R0 2
       10 GETIMPORT                        R2 K2 [game]
       12 NAMECALL                         R0 R0 K3 ["IsDescendantOf"]
       14 CALL                             R0 2 1
       15 JUMPIF                           R0 ; [+1]
       16 RETURN                           R0 0
       17 GETUPVAL                         R0 4
       18 GETUPVAL                         R2 1
       19 NAMECALL                         R0 R0 K4 ["LoadAnimation"]
       21 CALL                             R0 2 1
       22 SETUPVAL                         R0 3
       23 GETUPVAL                         R0 2
       24 GETIMPORT                        R2 K2 [game]
       26 NAMECALL                         R0 R0 K3 ["IsDescendantOf"]
       28 CALL                             R0 2 1
       29 JUMPIF                           R0 ; [+1]
       30 RETURN                           R0 0
       31 GETUPVAL                         R0 3
       32 LOADB                            R1 1
       33 SETTABLEKS                       R1 R0 K5 ["Looped"]
       35 GETUPVAL                         R0 3
       36 NAMECALL                         R0 R0 K6 ["Play"]
       38 CALL                             R0 1 0
       39 GETUPVAL                         R0 5
       40 GETUPVAL                         R1 3
       41 CALL                             R0 1 0
       42 RETURN                           R0 0

PROTO_7:
        0 GETIMPORT                        R0 K2 [task.cancel]
        2 GETUPVAL                         R1 0
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 1
        5 JUMPIFEQKNIL                     R0 ; [+10]
        7 GETUPVAL                         R0 1
        8 LOADN                            R2 0
        9 NAMECALL                         R0 R0 K3 ["Stop"]
       11 CALL                             R0 2 0
       12 GETUPVAL                         R0 1
       13 NAMECALL                         R0 R0 K4 ["Destroy"]
       15 CALL                             R0 1 0
       16 GETUPVAL                         R0 2
       17 CALL                             R0 0 1
       18 JUMPIFNOT                        R0 ; [+15]
       19 GETUPVAL                         R0 3
       20 GETUPVAL                         R1 4
       21 CALL                             R0 1 0
       22 GETUPVAL                         R0 5
       23 GETUPVAL                         R1 6
       24 NAMECALL                         R1 R1 K5 ["IsRunning"]
       26 CALL                             R1 1 1
       27 JUMPIFNOT                        R1 ; [+1]
       28 RETURN                           R0 0
       29 LOADN                            R3 0
       30 NAMECALL                         R1 R0 K6 ["StepAnimations"]
       32 CALL                             R1 2 0
       33 RETURN                           R0 0
       34 GETUPVAL                         R0 5
       35 GETUPVAL                         R1 6
       36 NAMECALL                         R1 R1 K5 ["IsRunning"]
       38 CALL                             R1 1 1
       39 JUMPIFNOT                        R1 ; [+1]
       40 JUMP                             ; [+4]
       41 LOADN                            R3 0
       42 NAMECALL                         R1 R0 K6 ["StepAnimations"]
       44 CALL                             R1 2 0
       45 GETUPVAL                         R0 3
       46 GETUPVAL                         R1 4
       47 CALL                             R0 1 0
       48 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 CALL                             R0 1 0
        3 GETUPVAL                         R0 1
        4 JUMPIFNOTEQKNIL                  R0 ; [+3]
        6 LOADNIL                          R0
        7 RETURN                           R0 1
        8 GETUPVAL                         R2 1
        9 JUMPIFNOTEQKNIL                  R2 ; [+2]
       11 LOADB                            R1 0 +1
       12 LOADB                            R1 1
       13 GETUPVAL                         R2 2
       14 GETTABLEKS                       R2 R2 K0 ["LUAU_ANALYZE_ERROR"]
       16 FASTCALL2                        ASSERT R1 R2 ; [+3]
       18 GETIMPORT                        R0 K2 [assert]
       20 CALL                             R0 2 0
       21 GETUPVAL                         R0 1
       22 GETIMPORT                        R2 K4 [game]
       24 NAMECALL                         R0 R0 K5 ["IsDescendantOf"]
       26 CALL                             R0 2 1
       27 JUMPIF                           R0 ; [+2]
       28 LOADNIL                          R0
       29 RETURN                           R0 1
       30 GETIMPORT                        R0 K8 [Instance.new]
       32 LOADK                            R1 K9 ["Animation"]
       33 CALL                             R0 1 1
       34 GETUPVAL                         R1 3
       35 JUMPIFNOT                        R1 ; [+12]
       36 GETUPVAL                         R1 4
       37 GETUPVAL                         R3 5
       38 GETTABLEKS                       R3 R3 K10 ["TestAssets"]
       40 GETTABLEKS                       R3 R3 K11 ["idle"]
       42 NAMECALL                         R1 R1 K12 ["RegisterAnimationClip"]
       44 CALL                             R1 2 1
       45 SETTABLEKS                       R1 R0 K13 ["AnimationId"]
       47 JUMP                             ; [+8]
       48 LOADK                            R2 K14 ["rbxassetid://%*"]
       49 GETUPVAL                         R4 6
       50 NAMECALL                         R2 R2 K15 ["format"]
       52 CALL                             R2 2 1
       53 MOVE                             R1 R2
       54 SETTABLEKS                       R1 R0 K13 ["AnimationId"]
       56 GETUPVAL                         R1 7
       57 GETUPVAL                         R2 1
       58 CALL                             R1 1 1
       59 LOADNIL                          R2
       60 GETIMPORT                        R3 K18 [task.spawn]
       62 NEWCLOSURE                       R4 P0
       63 CAPTURE                          UPVAL U8
       64 CAPTURE                          VAL R0
       65 CAPTURE                          UPVAL U1
       66 CAPTURE                          REF R2
       67 CAPTURE                          VAL R1
       68 CAPTURE                          UPVAL U0
       69 CALL                             R3 1 1
       70 NEWCLOSURE                       R4 P1
       71 CAPTURE                          VAL R3
       72 CAPTURE                          REF R2
       73 CAPTURE                          UPVAL U9
       74 CAPTURE                          UPVAL U10
       75 CAPTURE                          UPVAL U1
       76 CAPTURE                          VAL R1
       77 CAPTURE                          UPVAL U11
       78 CLOSEUPVALS                      R2
       79 RETURN                           R4 1

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R2 R2 K0 ["IsRunning"]
        4 CALL                             R2 1 1
        5 JUMPIFNOT                        R2 ; [+1]
        6 JUMP                             ; [+4]
        7 MOVE                             R4 R0
        8 NAMECALL                         R2 R1 K1 ["StepAnimations"]
       10 CALL                             R2 2 0
       11 GETUPVAL                         R1 2
       12 JUMPIFEQKNIL                     R1 ; [+10]
       14 GETUPVAL                         R1 2
       15 GETUPVAL                         R3 3
       16 GETTABLEKS                       R3 R3 K2 ["TimePosition"]
       18 GETUPVAL                         R4 3
       19 GETTABLEKS                       R4 R4 K3 ["Length"]
       21 DIV                              R2 R3 R4
       22 CALL                             R1 1 0
       23 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R0 0
        1 JUMPIFEQKNIL                     R0 ; [+4]
        3 GETUPVAL                         R0 1
        4 JUMPIFNOTEQKNIL                  R0 ; [+2]
        6 RETURN                           R0 0
        7 GETUPVAL                         R2 0
        8 JUMPIFNOTEQKNIL                  R2 ; [+2]
       10 LOADB                            R1 0 +1
       11 LOADB                            R1 1
       12 GETUPVAL                         R2 2
       13 GETTABLEKS                       R2 R2 K0 ["LUAU_ANALYZE_ERROR"]
       15 FASTCALL2                        ASSERT R1 R2 ; [+3]
       17 GETIMPORT                        R0 K2 [assert]
       19 CALL                             R0 2 0
       20 GETUPVAL                         R0 3
       21 GETUPVAL                         R1 0
       22 CALL                             R0 1 1
       23 GETUPVAL                         R1 4
       24 JUMPIFNOTEQKNIL                  R1 ; [+15]
       26 GETUPVAL                         R1 5
       27 GETTABLEKS                       R1 R1 K3 ["Heartbeat"]
       29 NEWCLOSURE                       R3 P0
       30 CAPTURE                          VAL R0
       31 CAPTURE                          UPVAL U5
       32 CAPTURE                          UPVAL U6
       33 CAPTURE                          UPVAL U1
       34 NAMECALL                         R1 R1 K4 ["Connect"]
       36 CALL                             R1 2 1
       37 NEWCLOSURE                       R2 P1
       38 CAPTURE                          VAL R1
       39 RETURN                           R2 1
       40 GETUPVAL                         R1 1
       41 LOADN                            R3 0
       42 NAMECALL                         R1 R1 K5 ["Stop"]
       44 CALL                             R1 2 0
       45 GETUPVAL                         R1 1
       46 NAMECALL                         R1 R1 K6 ["Play"]
       48 CALL                             R1 1 0
       49 GETUPVAL                         R2 4
       50 GETUPVAL                         R3 1
       51 GETTABLEKS                       R3 R3 K7 ["Length"]
       53 MUL                              R1 R2 R3
       54 GETUPVAL                         R2 5
       55 NAMECALL                         R2 R2 K8 ["IsRunning"]
       57 CALL                             R2 1 1
       58 JUMPIFNOT                        R2 ; [+1]
       59 JUMP                             ; [+4]
       60 MOVE                             R4 R1
       61 NAMECALL                         R2 R0 K9 ["StepAnimations"]
       63 CALL                             R2 2 0
       64 LOADNIL                          R1
       65 RETURN                           R1 1

PROTO_12:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["useState"]
        3 LOADNIL                          R5
        4 CALL                             R4 1 2
        5 GETUPVAL                         R6 0
        6 GETTABLEKS                       R6 R6 K0 ["useState"]
        8 LOADNIL                          R7
        9 CALL                             R6 1 2
       10 GETUPVAL                         R8 0
       11 GETTABLEKS                       R8 R8 K1 ["useEffect"]
       13 NEWCLOSURE                       R9 P0
       14 CAPTURE                          VAL R0
       15 CAPTURE                          VAL R7
       16 CAPTURE                          UPVAL U1
       17 NEWTABLE                         R10 0 1
       19 MOVE                             R11 R0
       20 SETLIST                          R10 R11 1 [1]
       22 CALL                             R8 2 0
       23 GETUPVAL                         R8 0
       24 GETTABLEKS                       R8 R8 K1 ["useEffect"]
       26 NEWCLOSURE                       R9 P1
       27 CAPTURE                          VAL R5
       28 CAPTURE                          VAL R6
       29 CAPTURE                          UPVAL U1
       30 CAPTURE                          UPVAL U2
       31 CAPTURE                          UPVAL U3
       32 CAPTURE                          UPVAL U4
       33 CAPTURE                          VAL R1
       34 CAPTURE                          UPVAL U5
       35 CAPTURE                          UPVAL U6
       36 CAPTURE                          UPVAL U7
       37 CAPTURE                          UPVAL U8
       38 CAPTURE                          UPVAL U9
       39 NEWTABLE                         R10 0 2
       41 ORK                              R11 R6 K2 [0]
       42 ORK                              R12 R1 K2 [0]
       43 SETLIST                          R10 R11 2 [1]
       45 CALL                             R8 2 0
       46 GETUPVAL                         R8 0
       47 GETTABLEKS                       R8 R8 K1 ["useEffect"]
       49 NEWCLOSURE                       R9 P2
       50 CAPTURE                          VAL R0
       51 CAPTURE                          VAL R4
       52 CAPTURE                          UPVAL U1
       53 CAPTURE                          UPVAL U5
       54 CAPTURE                          VAL R3
       55 CAPTURE                          UPVAL U9
       56 CAPTURE                          VAL R2
       57 NEWTABLE                         R10 0 4
       59 MOVE                             R11 R0
       60 MOVE                             R12 R4
       61 MOVE                             R13 R3
       62 MOVE                             R14 R2
       63 SETLIST                          R10 R11 4 [1]
       65 CALL                             R8 2 0
       66 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["AnimationClipProvider"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K1 [game]
        9 LOADK                            R3 K4 ["ContentProvider"]
       10 NAMECALL                         R1 R1 K3 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K1 [game]
       15 LOADK                            R4 K5 ["RunService"]
       16 NAMECALL                         R2 R2 K3 ["GetService"]
       18 CALL                             R2 2 1
       19 GETIMPORT                        R3 K1 [game]
       21 LOADK                            R5 K6 ["ServerStorage"]
       22 NAMECALL                         R3 R3 K3 ["GetService"]
       24 CALL                             R3 2 1
       25 GETIMPORT                        R4 K8 [script]
       27 LOADK                            R6 K9 ["AvatarCompatibilityPreviewer"]
       28 NAMECALL                         R4 R4 K10 ["FindFirstAncestor"]
       30 CALL                             R4 2 1
       31 GETIMPORT                        R5 K12 [require]
       33 GETTABLEKS                       R6 R4 K13 ["Packages"]
       35 GETTABLEKS                       R6 R6 K14 ["React"]
       37 CALL                             R5 1 1
       38 GETIMPORT                        R6 K12 [require]
       40 GETTABLEKS                       R7 R4 K15 ["Src"]
       42 GETTABLEKS                       R7 R7 K16 ["Util"]
       44 GETTABLEKS                       R7 R7 K17 ["Constants"]
       46 CALL                             R6 1 1
       47 GETIMPORT                        R7 K12 [require]
       49 GETTABLEKS                       R8 R4 K15 ["Src"]
       51 GETTABLEKS                       R8 R8 K18 ["Types"]
       53 CALL                             R7 1 1
       54 GETIMPORT                        R8 K12 [require]
       56 GETTABLEKS                       R9 R4 K15 ["Src"]
       58 GETTABLEKS                       R9 R9 K19 ["Flags"]
       60 GETTABLEKS                       R9 R9 K20 ["getFFlagAvatarPreviewerResetAnimationConstraints"]
       62 CALL                             R8 1 1
       63 GETIMPORT                        R9 K1 [game]
       65 LOADK                            R11 K21 ["DebugAvatarPreviewerUseLocalAnimationsOnly"]
       66 LOADB                            R12 0
       67 NAMECALL                         R9 R9 K22 ["DefineFastFlag"]
       69 CALL                             R9 3 1
       70 DUPCLOSURE                       R10 K23 [PROTO_0]
       71 DUPCLOSURE                       R11 K24 [PROTO_1]
       72 CAPTURE                          VAL R8
       73 CAPTURE                          VAL R6
       74 DUPCLOSURE                       R12 K25 [PROTO_2]
       75 CAPTURE                          VAL R2
       76 DUPCLOSURE                       R13 K26 [PROTO_12]
       77 CAPTURE                          VAL R5
       78 CAPTURE                          VAL R6
       79 CAPTURE                          VAL R9
       80 CAPTURE                          VAL R0
       81 CAPTURE                          VAL R3
       82 CAPTURE                          VAL R10
       83 CAPTURE                          VAL R1
       84 CAPTURE                          VAL R8
       85 CAPTURE                          VAL R11
       86 CAPTURE                          VAL R2
       87 RETURN                           R13 1
