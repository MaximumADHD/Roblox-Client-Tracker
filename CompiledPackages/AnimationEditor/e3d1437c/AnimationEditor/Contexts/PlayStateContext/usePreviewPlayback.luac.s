PROTO_0:
        0 NEWTABLE                         R1 0 0
        2 LOADNIL                          R2
        3 NAMECALL                         R3 R0 K0 ["GetChildren"]
        5 CALL                             R3 1 3
        6 FORGPREP                         R3
        7 LOADK                            R10 K1 ["Animator"]
        8 NAMECALL                         R8 R7 K2 ["IsA"]
       10 CALL                             R8 2 1
       11 JUMPIFNOT                        R8 ; [+24]
       12 GETIMPORT                        R8 K5 [Instance.fromExisting]
       14 MOVE                             R9 R7
       15 CALL                             R8 1 1
       16 MOVE                             R2 R8
       17 NAMECALL                         R8 R7 K0 ["GetChildren"]
       19 CALL                             R8 1 3
       20 FORGPREP                         R8
       21 LOADNIL                          R13
       22 SETTABLEKS                       R13 R12 K6 ["Parent"]
       24 FASTCALL2                        TABLE_INSERT R1 R12 ; [+5]
       26 MOVE                             R14 R1
       27 MOVE                             R15 R12
       28 GETIMPORT                        R13 K9 [table.insert]
       30 CALL                             R13 2 0
       31 FORGLOOP                         R8 2 ; [-11]
       33 NAMECALL                         R8 R7 K10 ["Destroy"]
       35 CALL                             R8 1 0
       36 FORGLOOP                         R3 2 ; [-30]
       38 JUMPIF                           R2 ; [+11]
       39 GETIMPORT                        R3 K12 [Instance.new]
       41 LOADK                            R4 K1 ["Animator"]
       42 CALL                             R3 1 1
       43 LOADB                            R4 0
       44 SETTABLEKS                       R4 R3 K13 ["Archivable"]
       46 LOADK                            R4 K1 ["Animator"]
       47 SETTABLEKS                       R4 R3 K14 ["Name"]
       49 MOVE                             R2 R3
       50 MOVE                             R3 R1
       51 LOADNIL                          R4
       52 LOADNIL                          R5
       53 FORGPREP                         R3
       54 SETTABLEKS                       R2 R7 K6 ["Parent"]
       56 FORGLOOP                         R3 2 ; [-3]
       58 SETTABLEKS                       R0 R2 K6 ["Parent"]
       60 RETURN                           R2 1

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["animationTrack"]
        2 LOADN                            R3 0
        3 NAMECALL                         R1 R1 K1 ["Stop"]
        5 CALL                             R1 2 0
        6 GETTABLEKS                       R1 R0 K2 ["animator"]
        8 LOADK                            R3 K3 ["Model"]
        9 NAMECALL                         R1 R1 K4 ["FindFirstAncestorWhichIsA"]
       11 CALL                             R1 2 1
       12 JUMPIFEQKNIL                     R1 ; [+25]
       14 LOADK                            R4 K5 ["Workspace"]
       15 NAMECALL                         R2 R1 K6 ["IsA"]
       17 CALL                             R2 2 1
       18 JUMPIF                           R2 ; [+19]
       19 NAMECALL                         R2 R1 K7 ["GetDescendants"]
       21 CALL                             R2 1 3
       22 FORGPREP                         R2
       23 LOADK                            R9 K8 ["Motor6D"]
       24 NAMECALL                         R7 R6 K6 ["IsA"]
       26 CALL                             R7 2 1
       27 JUMPIFNOT                        R7 ; [+8]
       28 LOADN                            R7 0
       29 SETTABLEKS                       R7 R6 K9 ["CurrentAngle"]
       31 GETIMPORT                        R7 K12 [CFrame.new]
       33 CALL                             R7 0 1
       34 SETTABLEKS                       R7 R6 K13 ["Transform"]
       36 FORGLOOP                         R2 2 ; [-14]
       38 GETUPVAL                         R2 0
       39 NAMECALL                         R2 R2 K14 ["IsRunning"]
       41 CALL                             R2 1 1
       42 JUMPIF                           R2 ; [+6]
       43 GETTABLEKS                       R2 R0 K2 ["animator"]
       45 LOADN                            R4 0
       46 NAMECALL                         R2 R2 K15 ["StepAnimations"]
       48 CALL                             R2 2 0
       49 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 LOADN                            R2 0
        2 NAMECALL                         R0 R0 K0 ["StepAnimations"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Destroy"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 1
        5 LOADN                            R2 0
        6 NAMECALL                         R0 R0 K1 ["Stop"]
        8 CALL                             R0 2 0
        9 GETUPVAL                         R0 2
       10 NAMECALL                         R0 R0 K2 ["IsRunning"]
       12 CALL                             R0 1 1
       13 JUMPIF                           R0 ; [+5]
       14 GETUPVAL                         R0 3
       15 LOADN                            R2 0
       16 NAMECALL                         R0 R0 K3 ["StepAnimations"]
       18 CALL                             R0 2 0
       19 GETUPVAL                         R0 1
       20 NAMECALL                         R0 R0 K0 ["Destroy"]
       22 CALL                             R0 1 0
       23 RETURN                           R0 0

PROTO_4:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R1 R4 K0 ["animationClipsList"]
        5 LOADNIL                          R2
        6 LOADNIL                          R3
        7 FORGPREP                         R1
        8 FASTCALL1                        TYPEOF R5 ; [+3]
        9 MOVE                             R8 R5
       10 GETIMPORT                        R7 K2 [typeof]
       12 CALL                             R7 1 1
       13 JUMPIFNOTEQKS                    R7 K3 ["Instance"] ; [+3]
       15 MOVE                             R6 R5
       16 JUMP                             ; [+2]
       17 GETTABLEKS                       R6 R5 K4 ["clip"]
       19 LOADNIL                          R7
       20 FASTCALL1                        TYPEOF R5 ; [+3]
       21 MOVE                             R9 R5
       22 GETIMPORT                        R8 K2 [typeof]
       24 CALL                             R8 1 1
       25 JUMPIFEQKS                       R8 K3 ["Instance"] ; [+5]
       27 GETTABLEKS                       R8 R5 K5 ["animator"]
       29 JUMPIFNOTEQKNIL                  R8 ; [+31]
       31 GETUPVAL                         R9 1
       32 GETTABLEKS                       R8 R9 K6 ["findAnimatorParent"]
       34 MOVE                             R9 R6
       35 CALL                             R8 1 1
       36 JUMPIF                           R8 ; [+2]
       37 CLOSEUPVALS                      R7
       38 JUMP                             ; [+115]
       39 GETUPVAL                         R10 1
       40 GETTABLEKS                       R9 R10 K7 ["findHumanoidInParent"]
       42 MOVE                             R10 R8
       43 CALL                             R9 1 1
       44 JUMPIFNOT                        R9 ; [+11]
       45 GETUPVAL                         R11 1
       46 GETTABLEKS                       R10 R11 K8 ["ensureAnimationRigDataInAnimationClip"]
       48 MOVE                             R11 R6
       49 MOVE                             R12 R9
       50 CALL                             R10 2 0
       51 GETUPVAL                         R11 1
       52 GETTABLEKS                       R10 R11 K9 ["ensureAnimationRigDataInHumanoid"]
       54 MOVE                             R11 R9
       55 CALL                             R10 1 0
       56 GETUPVAL                         R10 2
       57 MOVE                             R11 R8
       58 CALL                             R10 1 1
       59 MOVE                             R7 R10
       60 JUMP                             ; [+2]
       61 GETTABLEKS                       R7 R5 K5 ["animator"]
       63 JUMPIFNOTEQKNIL                  R7 ; [+2]
       65 LOADB                            R9 0 +1
       66 LOADB                            R9 1
       67 FASTCALL2K                       ASSERT R9 K10 ; [+4]
       69 LOADK                            R10 K10 ["Luau"]
       70 GETIMPORT                        R8 K12 [assert]
       72 CALL                             R8 2 0
       73 GETUPVAL                         R8 3
       74 MOVE                             R10 R6
       75 NAMECALL                         R8 R8 K13 ["RegisterAnimationClip"]
       77 CALL                             R8 2 1
       78 GETIMPORT                        R9 K15 [Instance.new]
       80 LOADK                            R10 K16 ["Animation"]
       81 CALL                             R9 1 1
       82 LOADK                            R11 K17 ["Animation_"]
       83 GETTABLEKS                       R12 R6 K18 ["Name"]
       85 CONCAT                           R10 R11 R12
       86 SETTABLEKS                       R10 R9 K18 ["Name"]
       88 SETTABLEKS                       R8 R9 K19 ["AnimationId"]
       90 MOVE                             R12 R9
       91 NAMECALL                         R10 R7 K20 ["LoadAnimation"]
       93 CALL                             R10 2 1
       94 GETIMPORT                        R11 K24 [Enum.AnimationPriority.Action4]
       96 SETTABLEKS                       R11 R10 K25 ["Priority"]
       98 LOADB                            R11 1
       99 SETTABLEKS                       R11 R10 K26 ["Looped"]
      101 LOADN                            R13 0
      102 LOADN                            R14 1
      103 LOADN                            R15 0
      104 NAMECALL                         R11 R10 K27 ["Play"]
      106 CALL                             R11 4 0
      107 GETUPVAL                         R12 4
      108 GETTABLEKS                       R11 R12 K28 ["currentTime"]
      110 SETTABLEKS                       R11 R10 K29 ["TimePosition"]
      112 GETUPVAL                         R11 5
      113 NAMECALL                         R11 R11 K30 ["IsRunning"]
      115 CALL                             R11 1 1
      116 JUMPIF                           R11 ; [+16]
      117 GETIMPORT                        R11 K32 [pcall]
      119 NEWCLOSURE                       R12 P0
      120 CAPTURE                          REF R7
      121 CALL                             R11 1 2
      122 JUMPIF                           R11 ; [+10]
      123 GETIMPORT                        R13 K34 [warn]
      125 LOADK                            R15 K35 ["Failed to step animations for preview: "]
      126 FASTCALL1                        TOSTRING R12 ; [+3]
      127 MOVE                             R17 R12
      128 GETIMPORT                        R16 K37 [tostring]
      130 CALL                             R16 1 1
      131 CONCAT                           R14 R15 R16
      132 CALL                             R13 1 0
      133 DUPTABLE                         R13 K41 [{"animationClip", "animationTrack", "animator", "destroy"}]
      134 SETTABLEKS                       R6 R13 K38 ["animationClip"]
      136 SETTABLEKS                       R10 R13 K39 ["animationTrack"]
      138 SETTABLEKS                       R7 R13 K5 ["animator"]
      140 NEWCLOSURE                       R14 P1
      141 CAPTURE                          VAL R9
      142 CAPTURE                          VAL R10
      143 CAPTURE                          UPVAL U5
      144 CAPTURE                          REF R7
      145 SETTABLEKS                       R14 R13 K40 ["destroy"]
      147 FASTCALL2                        TABLE_INSERT R0 R13 ; [+4]
      149 MOVE                             R12 R0
      150 GETIMPORT                        R11 K44 [table.insert]
      152 CALL                             R11 2 0
      153 CLOSEUPVALS                      R7
      154 FORGLOOP                         R1 2 ; [-147]
      156 GETIMPORT                        R1 K46 [table.freeze]
      158 MOVE                             R2 R0
      159 CALL                             R1 1 -1
      160 RETURN                           R1 -1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 LOADNIL                          R2
        3 FORGPREP                         R0
        4 GETTABLEKS                       R5 R4 K0 ["destroy"]
        6 CALL                             R5 0 0
        7 FORGLOOP                         R0 2 ; [-4]
        9 RETURN                           R0 0

PROTO_6:
        0 NEWCLOSURE                       R0 P0
        1 CAPTURE                          UPVAL U0
        2 RETURN                           R0 1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["animator"]
        3 GETUPVAL                         R2 1
        4 NAMECALL                         R0 R0 K1 ["StepAnimations"]
        6 CALL                             R0 2 0
        7 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["setDebugDataAsync"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R1 R2 K1 ["animationTrack"]
        6 NAMECALL                         R1 R1 K2 ["GetDebugData"]
        8 CALL                             R1 1 -1
        9 CALL                             R0 -1 0
       10 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["animator"]
        3 LOADN                            R2 0
        4 NAMECALL                         R0 R0 K1 ["StepAnimations"]
        6 CALL                             R0 2 0
        7 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 LOADNIL                          R2
        3 FORGPREP                         R0
        4 GETUPVAL                         R6 1
        5 GETTABLEKS                       R5 R6 K0 ["animationParameters"]
        7 GETUPVAL                         R7 1
        8 GETTABLEKS                       R6 R7 K1 ["previewAnimationParameters"]
       10 JUMPIFEQKNIL                     R6 ; [+4]
       12 GETUPVAL                         R6 1
       13 GETTABLEKS                       R5 R6 K1 ["previewAnimationParameters"]
       15 MOVE                             R6 R5
       16 LOADNIL                          R7
       17 LOADNIL                          R8
       18 FORGPREP                         R6
       19 GETTABLEKS                       R11 R4 K2 ["animationTrack"]
       21 MOVE                             R13 R9
       22 MOVE                             R14 R10
       23 NAMECALL                         R11 R11 K3 ["SetParameter"]
       25 CALL                             R11 3 0
       26 FORGLOOP                         R6 2 ; [-8]
       28 GETUPVAL                         R7 2
       29 GETTABLEKS                       R6 R7 K4 ["currentTime"]
       31 JUMPIFNOTEQKN                    R6 K5 [0] ; [+5]
       33 GETUPVAL                         R6 3
       34 MOVE                             R7 R4
       35 CALL                             R6 1 0
       36 JUMP                             ; [+93]
       37 GETTABLEKS                       R7 R4 K2 ["animationTrack"]
       39 GETTABLEKS                       R6 R7 K6 ["IsPlaying"]
       41 JUMPIF                           R6 ; [+8]
       42 GETTABLEKS                       R6 R4 K2 ["animationTrack"]
       44 LOADN                            R8 0
       45 LOADN                            R9 1
       46 LOADN                            R10 0
       47 NAMECALL                         R6 R6 K7 ["Play"]
       49 CALL                             R6 4 0
       50 GETTABLEKS                       R6 R4 K8 ["animationClip"]
       52 LOADK                            R8 K9 ["AnimationGraphDefinition"]
       53 NAMECALL                         R6 R6 K10 ["IsA"]
       55 CALL                             R6 2 1
       56 JUMPIFNOT                        R6 ; [+45]
       57 GETUPVAL                         R8 2
       58 GETTABLEKS                       R7 R8 K4 ["currentTime"]
       60 GETUPVAL                         R9 4
       61 GETTABLEKS                       R8 R9 K11 ["current"]
       63 SUB                              R6 R7 R8
       64 GETUPVAL                         R7 4
       65 GETUPVAL                         R9 2
       66 GETTABLEKS                       R8 R9 K4 ["currentTime"]
       68 SETTABLEKS                       R8 R7 K11 ["current"]
       70 GETUPVAL                         R7 5
       71 NAMECALL                         R7 R7 K12 ["IsRunning"]
       73 CALL                             R7 1 1
       74 JUMPIF                           R7 ; [+20]
       75 LOADN                            R7 0
       76 JUMPIFNOTLT                      R7 R6 ; [+18]
       78 GETIMPORT                        R7 K14 [pcall]
       80 NEWCLOSURE                       R8 P0
       81 CAPTURE                          VAL R4
       82 CAPTURE                          VAL R6
       83 CALL                             R7 1 2
       84 JUMPIF                           R7 ; [+10]
       85 GETIMPORT                        R9 K16 [warn]
       87 LOADK                            R11 K17 ["Failed to step animations for preview: "]
       88 FASTCALL1                        TOSTRING R8 ; [+3]
       89 MOVE                             R13 R8
       90 GETIMPORT                        R12 K19 [tostring]
       92 CALL                             R12 1 1
       93 CONCAT                           R10 R11 R12
       94 CALL                             R9 1 0
       95 GETIMPORT                        R7 K22 [task.spawn]
       97 NEWCLOSURE                       R8 P1
       98 CAPTURE                          UPVAL U6
       99 CAPTURE                          VAL R4
      100 CALL                             R7 1 0
      101 JUMP                             ; [+28]
      102 GETTABLEKS                       R6 R4 K2 ["animationTrack"]
      104 GETUPVAL                         R8 2
      105 GETTABLEKS                       R7 R8 K4 ["currentTime"]
      107 SETTABLEKS                       R7 R6 K23 ["TimePosition"]
      109 GETUPVAL                         R6 5
      110 NAMECALL                         R6 R6 K12 ["IsRunning"]
      112 CALL                             R6 1 1
      113 JUMPIF                           R6 ; [+16]
      114 GETIMPORT                        R6 K14 [pcall]
      116 NEWCLOSURE                       R7 P2
      117 CAPTURE                          VAL R4
      118 CALL                             R6 1 2
      119 JUMPIF                           R6 ; [+10]
      120 GETIMPORT                        R8 K16 [warn]
      122 LOADK                            R10 K17 ["Failed to step animations for preview: "]
      123 FASTCALL1                        TOSTRING R7 ; [+3]
      124 MOVE                             R12 R7
      125 GETIMPORT                        R11 K19 [tostring]
      127 CALL                             R11 1 1
      128 CONCAT                           R9 R10 R11
      129 CALL                             R8 1 0
      130 FORGLOOP                         R0 2 ; [-127]
      132 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useContext"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R2 R3 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R2 R3 K0 ["useContext"]
       10 GETUPVAL                         R4 2
       11 GETTABLEKS                       R3 R4 K1 ["Context"]
       13 CALL                             R2 1 1
       14 GETUPVAL                         R4 0
       15 GETTABLEKS                       R3 R4 K0 ["useContext"]
       17 GETUPVAL                         R5 3
       18 GETTABLEKS                       R4 R5 K1 ["Context"]
       20 CALL                             R3 1 1
       21 GETUPVAL                         R5 0
       22 GETTABLEKS                       R4 R5 K2 ["useMemo"]
       24 NEWCLOSURE                       R5 P0
       25 CAPTURE                          VAL R1
       26 CAPTURE                          UPVAL U4
       27 CAPTURE                          UPVAL U5
       28 CAPTURE                          UPVAL U6
       29 CAPTURE                          VAL R0
       30 CAPTURE                          UPVAL U7
       31 NEWTABLE                         R6 0 1
       33 GETTABLEKS                       R7 R1 K3 ["animationClipsList"]
       35 SETLIST                          R6 R7 1 [1]
       37 CALL                             R4 2 1
       38 GETUPVAL                         R6 0
       39 GETTABLEKS                       R5 R6 K4 ["useEffect"]
       41 NEWCLOSURE                       R6 P1
       42 CAPTURE                          VAL R4
       43 NEWTABLE                         R7 0 1
       45 MOVE                             R8 R4
       46 SETLIST                          R7 R8 1 [1]
       48 CALL                             R5 2 0
       49 GETUPVAL                         R6 0
       50 GETTABLEKS                       R5 R6 K5 ["useRef"]
       52 GETTABLEKS                       R6 R0 K6 ["currentTime"]
       54 CALL                             R5 1 1
       55 GETUPVAL                         R7 0
       56 GETTABLEKS                       R6 R7 K4 ["useEffect"]
       58 NEWCLOSURE                       R7 P2
       59 CAPTURE                          VAL R4
       60 CAPTURE                          VAL R2
       61 CAPTURE                          VAL R0
       62 CAPTURE                          UPVAL U8
       63 CAPTURE                          VAL R5
       64 CAPTURE                          UPVAL U7
       65 CAPTURE                          VAL R3
       66 NEWTABLE                         R8 0 5
       68 GETTABLEKS                       R9 R0 K7 ["isPlaying"]
       70 GETTABLEKS                       R10 R0 K6 ["currentTime"]
       72 MOVE                             R11 R4
       73 GETTABLEKS                       R12 R2 K8 ["animationParameters"]
       75 GETTABLEKS                       R13 R3 K9 ["setDebugDataAsync"]
       77 SETLIST                          R8 R9 5 [1]
       79 CALL                             R6 2 0
       80 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [game]
        9 LOADK                            R3 K6 ["AnimationClipProvider"]
       10 NAMECALL                         R1 R1 K7 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K5 [game]
       15 LOADK                            R4 K8 ["RunService"]
       16 NAMECALL                         R2 R2 K7 ["GetService"]
       18 CALL                             R2 2 1
       19 GETIMPORT                        R3 K10 [require]
       21 GETTABLEKS                       R5 R0 K11 ["Contexts"]
       23 GETTABLEKS                       R4 R5 K12 ["AnimationParameterContext"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K10 [require]
       28 GETTABLEKS                       R6 R0 K11 ["Contexts"]
       30 GETTABLEKS                       R5 R6 K13 ["AnimationPreviewClipsContext"]
       32 CALL                             R4 1 1
       33 GETIMPORT                        R5 K10 [require]
       35 GETTABLEKS                       R8 R0 K14 ["Util"]
       37 GETTABLEKS                       R7 R8 K15 ["Rig"]
       39 GETTABLEKS                       R6 R7 K16 ["AnimationRigDataUtils"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K10 [require]
       44 GETTABLEKS                       R8 R0 K11 ["Contexts"]
       46 GETTABLEKS                       R7 R8 K17 ["GraphDebugDataContext"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K10 [require]
       51 GETTABLEKS                       R9 R0 K18 ["Parent"]
       53 GETTABLEKS                       R8 R9 K19 ["React"]
       55 CALL                             R7 1 1
       56 DUPCLOSURE                       R8 K20 [PROTO_0]
       57 DUPCLOSURE                       R9 K21 [PROTO_1]
       58 CAPTURE                          VAL R2
       59 DUPCLOSURE                       R10 K22 [PROTO_11]
       60 CAPTURE                          VAL R7
       61 CAPTURE                          VAL R4
       62 CAPTURE                          VAL R3
       63 CAPTURE                          VAL R6
       64 CAPTURE                          VAL R5
       65 CAPTURE                          VAL R8
       66 CAPTURE                          VAL R1
       67 CAPTURE                          VAL R2
       68 CAPTURE                          VAL R9
       69 RETURN                           R10 1
