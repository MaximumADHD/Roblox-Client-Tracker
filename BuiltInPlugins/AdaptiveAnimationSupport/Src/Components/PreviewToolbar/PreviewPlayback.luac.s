PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["animationId"]
        4 NAMECALL                         R0 R0 K1 ["GetAnimationClipAsync"]
        6 CALL                             R0 2 -1
        7 RETURN                           R0 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 JUMPIFNOTEQKNIL                  R1 ; [+3]
        5 LOADNIL                          R2
        6 RETURN                           R2 1
        7 LOADK                            R5 K0 ["Animator"]
        8 NAMECALL                         R3 R1 K1 ["IsA"]
       10 CALL                             R3 2 1
       11 FASTCALL2K                       ASSERT R3 K2 ; [+4]
       13 LOADK                            R4 K2 ["Instance is not an Animator"]
       14 GETIMPORT                        R2 K4 [assert]
       16 CALL                             R2 2 0
       17 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["SignalsInstanceUtils"]
        3 GETTABLEKS                       R0 R0 K1 ["observeFirstDescendantWhichIsA"]
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R1 R1 K2 ["model"]
        8 LOADK                            R2 K3 ["Animator"]
        9 CALL                             R0 2 1
       10 GETUPVAL                         R1 2
       11 GETTABLEKS                       R1 R1 K4 ["createComputed"]
       13 NEWCLOSURE                       R2 P0
       14 CAPTURE                          VAL R0
       15 CALL                             R1 1 -1
       16 RETURN                           R1 -1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useAsync"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          VAL R0
        6 NEWTABLE                         R3 0 1
        8 GETTABLEKS                       R4 R0 K1 ["animationId"]
       10 SETLIST                          R3 R4 1 [1]
       12 CALL                             R1 2 1
       13 GETUPVAL                         R2 2
       14 GETTABLEKS                       R2 R2 K2 ["useSignalState"]
       16 GETUPVAL                         R3 3
       17 GETTABLEKS                       R3 R3 K3 ["useMemo"]
       19 NEWCLOSURE                       R4 P1
       20 CAPTURE                          UPVAL U4
       21 CAPTURE                          VAL R0
       22 CAPTURE                          UPVAL U5
       23 NEWTABLE                         R5 0 1
       25 GETTABLEKS                       R6 R0 K4 ["model"]
       27 SETLIST                          R5 R6 1 [1]
       29 CALL                             R3 2 -1
       30 CALL                             R2 -1 1
       31 GETTABLEKS                       R3 R0 K5 ["isPlaying"]
       33 JUMPIF                           R3 ; [+2]
       34 LOADNIL                          R3
       35 RETURN                           R3 1
       36 GETTABLEKS                       R3 R1 K6 ["status"]
       38 JUMPIFEQKS                       R3 K7 ["ok"] ; [+3]
       40 LOADNIL                          R3
       41 RETURN                           R3 1
       42 GETUPVAL                         R3 3
       43 GETTABLEKS                       R3 R3 K8 ["createElement"]
       45 GETUPVAL                         R4 0
       46 GETTABLEKS                       R4 R4 K9 ["ContextStack"]
       48 DUPTABLE                         R5 K11 [{"providers"}]
       49 NEWTABLE                         R6 0 4
       51 GETUPVAL                         R7 3
       52 GETTABLEKS                       R7 R7 K8 ["createElement"]
       54 GETUPVAL                         R8 4
       55 GETTABLEKS                       R8 R8 K12 ["NetworkingContext"]
       57 GETTABLEKS                       R8 R8 K13 ["EditableDataModelProvider"]
       59 CALL                             R7 1 1
       60 GETUPVAL                         R8 3
       61 GETTABLEKS                       R8 R8 K8 ["createElement"]
       63 GETUPVAL                         R9 4
       64 GETTABLEKS                       R9 R9 K14 ["TimeRangeContext"]
       66 GETTABLEKS                       R9 R9 K15 ["Provider"]
       68 DUPTABLE                         R10 K17 [{"timeRange"}]
       69 GETIMPORT                        R11 K20 [NumberRange.new]
       71 LOADN                            R12 0
       72 LOADN                            R13 10
       73 CALL                             R11 2 1
       74 SETTABLEKS                       R11 R10 K16 ["timeRange"]
       76 CALL                             R8 2 1
       77 GETUPVAL                         R9 3
       78 GETTABLEKS                       R9 R9 K8 ["createElement"]
       80 GETUPVAL                         R10 4
       81 GETTABLEKS                       R10 R10 K21 ["AnimationPreviewClipsContext"]
       83 GETTABLEKS                       R10 R10 K15 ["Provider"]
       85 DUPTABLE                         R11 K23 [{"animationClipsList"}]
       86 GETTABLEKS                       R13 R1 K6 ["status"]
       88 JUMPIFNOTEQKS                    R13 K7 ["ok"] ; [+13]
       90 NEWTABLE                         R12 0 1
       92 DUPTABLE                         R13 K26 [{"clip", "animator"}]
       93 GETTABLEKS                       R14 R1 K27 ["value"]
       95 SETTABLEKS                       R14 R13 K24 ["clip"]
       97 SETTABLEKS                       R2 R13 K25 ["animator"]
       99 SETLIST                          R12 R13 1 [1]
      101 JUMP                             ; [+2]
      102 NEWTABLE                         R12 0 0
      104 SETTABLEKS                       R12 R11 K22 ["animationClipsList"]
      106 CALL                             R9 2 1
      107 GETUPVAL                         R10 3
      108 GETTABLEKS                       R10 R10 K8 ["createElement"]
      110 GETUPVAL                         R11 4
      111 GETTABLEKS                       R11 R11 K28 ["PlayStateContext"]
      113 GETTABLEKS                       R11 R11 K29 ["UIDataModelProvider"]
      115 DUPTABLE                         R12 K31 [{"defaultPlayingState"}]
      116 LOADB                            R13 1
      117 SETTABLEKS                       R13 R12 K30 ["defaultPlayingState"]
      119 CALL                             R10 2 -1
      120 SETLIST                          R6 R7 -1 [1]
      122 SETTABLEKS                       R6 R5 K10 ["providers"]
      124 CALL                             R3 2 -1
      125 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AdaptiveAnimationSupport"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [game]
        9 LOADK                            R3 K6 ["AnimationClipProvider"]
       10 NAMECALL                         R1 R1 K7 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R3 R0 K10 ["Packages"]
       17 GETTABLEKS                       R3 R3 K11 ["AnimationEditor"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K9 [require]
       22 GETTABLEKS                       R4 R0 K10 ["Packages"]
       24 GETTABLEKS                       R4 R4 K12 ["React"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K9 [require]
       29 GETTABLEKS                       R5 R0 K10 ["Packages"]
       31 GETTABLEKS                       R5 R5 K13 ["ReactUtils"]
       33 CALL                             R4 1 1
       34 GETIMPORT                        R5 K9 [require]
       36 GETTABLEKS                       R6 R0 K10 ["Packages"]
       38 GETTABLEKS                       R6 R6 K14 ["Signals"]
       40 CALL                             R5 1 1
       41 GETIMPORT                        R6 K9 [require]
       43 GETTABLEKS                       R7 R0 K10 ["Packages"]
       45 GETTABLEKS                       R7 R7 K15 ["SignalsReact"]
       47 CALL                             R6 1 1
       48 DUPCLOSURE                       R7 K16 [PROTO_3]
       49 CAPTURE                          VAL R4
       50 CAPTURE                          VAL R1
       51 CAPTURE                          VAL R6
       52 CAPTURE                          VAL R3
       53 CAPTURE                          VAL R2
       54 CAPTURE                          VAL R5
       55 RETURN                           R7 1
