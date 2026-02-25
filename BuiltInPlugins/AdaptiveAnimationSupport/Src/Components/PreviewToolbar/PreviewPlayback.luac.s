PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R2 R3 K0 ["animationId"]
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
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["SignalsInstanceUtils"]
        3 GETTABLEKS                       R0 R1 K1 ["observeFirstDescendantWhichIsA"]
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R1 R2 K2 ["model"]
        8 LOADK                            R2 K3 ["Animator"]
        9 CALL                             R0 2 1
       10 GETUPVAL                         R2 2
       11 GETTABLEKS                       R1 R2 K4 ["createComputed"]
       13 NEWCLOSURE                       R2 P0
       14 CAPTURE                          VAL R0
       15 CALL                             R1 1 -1
       16 RETURN                           R1 -1

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useAsync"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          VAL R0
        6 NEWTABLE                         R3 0 1
        8 GETTABLEKS                       R4 R0 K1 ["animationId"]
       10 SETLIST                          R3 R4 1 [1]
       12 CALL                             R1 2 1
       13 GETUPVAL                         R3 2
       14 GETTABLEKS                       R2 R3 K2 ["useSignalState"]
       16 GETUPVAL                         R4 3
       17 GETTABLEKS                       R3 R4 K3 ["useMemo"]
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
       42 GETUPVAL                         R4 3
       43 GETTABLEKS                       R3 R4 K8 ["createElement"]
       45 GETUPVAL                         R5 0
       46 GETTABLEKS                       R4 R5 K9 ["ContextStack"]
       48 DUPTABLE                         R5 K11 [{"providers"}]
       49 NEWTABLE                         R6 0 5
       51 GETUPVAL                         R8 3
       52 GETTABLEKS                       R7 R8 K8 ["createElement"]
       54 GETUPVAL                         R10 4
       55 GETTABLEKS                       R9 R10 K12 ["NetworkingContext"]
       57 GETTABLEKS                       R8 R9 K13 ["EditableDataModelProvider"]
       59 CALL                             R7 1 1
       60 GETUPVAL                         R9 3
       61 GETTABLEKS                       R8 R9 K8 ["createElement"]
       63 GETUPVAL                         R11 4
       64 GETTABLEKS                       R10 R11 K14 ["PlayStateContext"]
       66 GETTABLEKS                       R9 R10 K15 ["UIDataModelProvider"]
       68 DUPTABLE                         R10 K17 [{"defaultPlayingState"}]
       69 LOADB                            R11 1
       70 SETTABLEKS                       R11 R10 K16 ["defaultPlayingState"]
       72 CALL                             R8 2 1
       73 GETUPVAL                         R10 3
       74 GETTABLEKS                       R9 R10 K8 ["createElement"]
       76 GETUPVAL                         R12 4
       77 GETTABLEKS                       R11 R12 K18 ["TimeRangeContext"]
       79 GETTABLEKS                       R10 R11 K19 ["Provider"]
       81 DUPTABLE                         R11 K21 [{"timeRange"}]
       82 GETIMPORT                        R12 K24 [NumberRange.new]
       84 LOADN                            R13 0
       85 LOADN                            R14 10
       86 CALL                             R12 2 1
       87 SETTABLEKS                       R12 R11 K20 ["timeRange"]
       89 CALL                             R9 2 1
       90 GETUPVAL                         R11 3
       91 GETTABLEKS                       R10 R11 K8 ["createElement"]
       93 GETUPVAL                         R13 4
       94 GETTABLEKS                       R12 R13 K25 ["AnimationPreviewClipsContext"]
       96 GETTABLEKS                       R11 R12 K19 ["Provider"]
       98 DUPTABLE                         R12 K27 [{"animationClipsList"}]
       99 GETTABLEKS                       R14 R1 K6 ["status"]
      101 JUMPIFNOTEQKS                    R14 K7 ["ok"] ; [+13]
      103 NEWTABLE                         R13 0 1
      105 DUPTABLE                         R14 K30 [{"clip", "animator"}]
      106 GETTABLEKS                       R15 R1 K31 ["value"]
      108 SETTABLEKS                       R15 R14 K28 ["clip"]
      110 SETTABLEKS                       R2 R14 K29 ["animator"]
      112 SETLIST                          R13 R14 1 [1]
      114 JUMP                             ; [+2]
      115 NEWTABLE                         R13 0 0
      117 SETTABLEKS                       R13 R12 K26 ["animationClipsList"]
      119 CALL                             R10 2 1
      120 GETUPVAL                         R12 3
      121 GETTABLEKS                       R11 R12 K8 ["createElement"]
      123 GETUPVAL                         R14 4
      124 GETTABLEKS                       R13 R14 K32 ["AnimationPreviewContext"]
      126 GETTABLEKS                       R12 R13 K13 ["EditableDataModelProvider"]
      128 CALL                             R11 1 -1
      129 SETLIST                          R6 R7 -1 [1]
      131 SETTABLEKS                       R6 R5 K10 ["providers"]
      133 CALL                             R3 2 -1
      134 RETURN                           R3 -1

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
       15 GETTABLEKS                       R4 R0 K10 ["Packages"]
       17 GETTABLEKS                       R3 R4 K11 ["AnimationEditor"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K9 [require]
       22 GETTABLEKS                       R5 R0 K10 ["Packages"]
       24 GETTABLEKS                       R4 R5 K12 ["React"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K9 [require]
       29 GETTABLEKS                       R6 R0 K10 ["Packages"]
       31 GETTABLEKS                       R5 R6 K13 ["ReactUtils"]
       33 CALL                             R4 1 1
       34 GETIMPORT                        R5 K9 [require]
       36 GETTABLEKS                       R7 R0 K10 ["Packages"]
       38 GETTABLEKS                       R6 R7 K14 ["Signals"]
       40 CALL                             R5 1 1
       41 GETIMPORT                        R6 K9 [require]
       43 GETTABLEKS                       R8 R0 K10 ["Packages"]
       45 GETTABLEKS                       R7 R8 K15 ["SignalsReact"]
       47 CALL                             R6 1 1
       48 DUPCLOSURE                       R7 K16 [PROTO_3]
       49 CAPTURE                          VAL R4
       50 CAPTURE                          VAL R1
       51 CAPTURE                          VAL R6
       52 CAPTURE                          VAL R3
       53 CAPTURE                          VAL R2
       54 CAPTURE                          VAL R5
       55 RETURN                           R7 1
