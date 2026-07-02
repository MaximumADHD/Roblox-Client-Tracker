PROTO_0:
        0 JUMPIFNOT                        R0 ; [+6]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K0 ["observeAttributes"]
        4 MOVE                             R2 R0
        5 CALL                             R1 1 -1
        6 RETURN                           R1 -1
        7 GETUPVAL                         R1 0
        8 GETTABLEKS                       R1 R1 K1 ["of"]
       10 NEWTABLE                         R2 0 0
       12 CALL                             R1 1 -1
       13 RETURN                           R1 -1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["switchMap"]
        3 GETUPVAL                         R2 1
        4 CALL                             R2 0 1
        5 JUMPIFNOT                        R2 ; [+4]
        6 GETUPVAL                         R1 2
        7 GETTABLEKS                       R1 R1 K1 ["observeSelectedGraphInstance"]
        9 JUMP                             ; [+3]
       10 GETUPVAL                         R1 3
       11 GETTABLEKS                       R1 R1 K2 ["observeSelectedGraphInstance_DEPRECATED"]
       13 DUPCLOSURE                       R2 K3 [PROTO_0]
       14 CAPTURE                          UPVAL U0
       15 CALL                             R0 2 -1
       16 RETURN                           R0 -1

PROTO_2:
        0 GETUPVAL                         R3 0
        1 CALL                             R3 0 1
        2 JUMPIFNOT                        R3 ; [+6]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K0 ["observeSelectedGraphInstance"]
        6 LOADB                            R3 0
        7 CALL                             R2 1 1
        8 JUMP                             ; [+5]
        9 GETUPVAL                         R2 2
       10 GETTABLEKS                       R2 R2 K1 ["observeSelectedGraphInstance_DEPRECATED"]
       12 LOADB                            R3 0
       13 CALL                             R2 1 1
       14 JUMPIF                           R2 ; [+5]
       15 GETIMPORT                        R3 K3 [warn]
       17 LOADK                            R4 K4 ["[AnimationParameterContext] No graph selected, cannot set parameter"]
       18 CALL                             R3 1 0
       19 RETURN                           R0 0
       20 GETUPVAL                         R3 3
       21 LOADK                            R5 K5 ["AnimationParameterContext"]
       22 LOADK                            R6 K6 ["setAnimationParameter"]
       23 NAMECALL                         R3 R3 K7 ["TryBeginRecording"]
       25 CALL                             R3 3 1
       26 MOVE                             R6 R0
       27 MOVE                             R7 R1
       28 NAMECALL                         R4 R2 K8 ["SetAttribute"]
       30 CALL                             R4 3 0
       31 JUMPIFNOT                        R3 ; [+7]
       32 GETUPVAL                         R4 3
       33 MOVE                             R6 R3
       34 GETIMPORT                        R7 K12 [Enum.FinishRecordingOperation.Commit]
       36 NAMECALL                         R4 R4 K13 ["FinishRecording"]
       38 CALL                             R4 3 0
       39 RETURN                           R0 0

PROTO_3:
        0 JUMPIFNOT                        R0 ; [+5]
        1 GETIMPORT                        R1 K2 [table.clone]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 JUMP                             ; [+2]
        6 NEWTABLE                         R1 0 0
        8 GETUPVAL                         R2 0
        9 GETUPVAL                         R4 1
       10 FASTCALL1                        TONUMBER R4 ; [+2]
       11 GETIMPORT                        R3 K4 [tonumber]
       13 CALL                             R3 1 1
       14 JUMPIF                           R3 ; [+1]
       15 GETUPVAL                         R3 1
       16 SETTABLE                         R3 R1 R2
       17 GETIMPORT                        R2 K6 [table.freeze]
       19 MOVE                             R3 R1
       20 CALL                             R2 1 -1
       21 RETURN                           R2 -1

PROTO_4:
        0 GETUPVAL                         R2 0
        1 NEWCLOSURE                       R3 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          VAL R1
        4 CALL                             R2 1 0
        5 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["numOverrides"]
        3 JUMPIFNOTEQKN                    R0 K1 [0] ; [+5]
        5 GETUPVAL                         R0 1
        6 LOADNIL                          R1
        7 CALL                             R0 1 0
        8 RETURN                           R0 0
        9 GETIMPORT                        R0 K4 [table.clone]
       11 GETUPVAL                         R1 2
       12 CALL                             R0 1 1
       13 GETUPVAL                         R1 0
       14 GETTABLEKS                       R1 R1 K5 ["parameterOverrides"]
       16 LOADNIL                          R2
       17 LOADNIL                          R3
       18 FORGPREP                         R1
       19 FASTCALL1                        TONUMBER R5 ; [+3]
       20 MOVE                             R8 R5
       21 GETIMPORT                        R7 K7 [tonumber]
       23 CALL                             R7 1 1
       24 OR                               R6 R7 R5
       25 SETTABLE                         R6 R0 R4
       26 FORGLOOP                         R1 2 ; [-8]
       28 GETUPVAL                         R1 1
       29 MOVE                             R2 R0
       30 CALL                             R1 1 0
       31 RETURN                           R0 0

PROTO_6:
        0 DUPTABLE                         R0 K7 [{"animationParameters", "observeAnimationParameters", "setAnimationParameterAsync", "setAnimationNodeParameterAsync", "previewAnimationParameters", "setPreviewAnimationParameters", "setPreviewAnimationNodeParameterAsync"}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["animationParameters"]
        4 GETUPVAL                         R1 1
        5 SETTABLEKS                       R1 R0 K1 ["observeAnimationParameters"]
        7 GETUPVAL                         R1 2
        8 SETTABLEKS                       R1 R0 K2 ["setAnimationParameterAsync"]
       10 GETUPVAL                         R1 2
       11 SETTABLEKS                       R1 R0 K3 ["setAnimationNodeParameterAsync"]
       13 GETUPVAL                         R1 3
       14 SETTABLEKS                       R1 R0 K4 ["previewAnimationParameters"]
       16 GETUPVAL                         R1 4
       17 SETTABLEKS                       R1 R0 K5 ["setPreviewAnimationParameters"]
       19 GETUPVAL                         R1 5
       20 SETTABLEKS                       R1 R0 K6 ["setPreviewAnimationNodeParameterAsync"]
       22 RETURN                           R0 1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K0 ["useContext"]
       10 GETUPVAL                         R3 2
       11 GETTABLEKS                       R3 R3 K2 ["ParameterOverrideContext"]
       13 GETTABLEKS                       R3 R3 K1 ["Context"]
       15 CALL                             R2 1 1
       16 GETUPVAL                         R4 3
       17 CALL                             R4 0 1
       18 JUMPIFNOT                        R4 ; [+8]
       19 GETUPVAL                         R3 0
       20 GETTABLEKS                       R3 R3 K0 ["useContext"]
       22 GETUPVAL                         R4 4
       23 GETTABLEKS                       R4 R4 K1 ["Context"]
       25 CALL                             R3 1 1
       26 JUMP                             ; [+1]
       27 LOADNIL                          R3
       28 GETUPVAL                         R4 0
       29 GETTABLEKS                       R4 R4 K3 ["useMemo"]
       31 NEWCLOSURE                       R5 P0
       32 CAPTURE                          UPVAL U5
       33 CAPTURE                          UPVAL U3
       34 CAPTURE                          VAL R3
       35 CAPTURE                          VAL R1
       36 NEWTABLE                         R6 0 1
       38 GETUPVAL                         R8 3
       39 CALL                             R8 0 1
       40 JUMPIFNOT                        R8 ; [+3]
       41 GETTABLEKS                       R7 R3 K4 ["observeSelectedGraphInstance"]
       43 JUMP                             ; [+2]
       44 GETTABLEKS                       R7 R1 K5 ["observeSelectedGraphInstance_DEPRECATED"]
       46 SETLIST                          R6 R7 1 [1]
       48 CALL                             R4 2 1
       49 GETUPVAL                         R5 6
       50 GETTABLEKS                       R5 R5 K6 ["useSignalState"]
       52 MOVE                             R6 R4
       53 CALL                             R5 1 1
       54 GETUPVAL                         R6 0
       55 GETTABLEKS                       R6 R6 K7 ["useCallback"]
       57 NEWCLOSURE                       R7 P1
       58 CAPTURE                          UPVAL U3
       59 CAPTURE                          VAL R3
       60 CAPTURE                          VAL R1
       61 CAPTURE                          UPVAL U7
       62 NEWTABLE                         R8 0 1
       64 GETUPVAL                         R10 3
       65 CALL                             R10 0 1
       66 JUMPIFNOT                        R10 ; [+3]
       67 GETTABLEKS                       R9 R3 K4 ["observeSelectedGraphInstance"]
       69 JUMP                             ; [+2]
       70 GETTABLEKS                       R9 R1 K5 ["observeSelectedGraphInstance_DEPRECATED"]
       72 SETLIST                          R8 R9 1 [1]
       74 CALL                             R6 2 1
       75 GETUPVAL                         R7 0
       76 GETTABLEKS                       R7 R7 K8 ["useState"]
       78 LOADNIL                          R8
       79 CALL                             R7 1 2
       80 GETUPVAL                         R9 0
       81 GETTABLEKS                       R9 R9 K7 ["useCallback"]
       83 NEWCLOSURE                       R10 P2
       84 CAPTURE                          VAL R8
       85 NEWTABLE                         R11 0 1
       87 MOVE                             R12 R8
       88 SETLIST                          R11 R12 1 [1]
       90 CALL                             R9 2 1
       91 GETUPVAL                         R10 0
       92 GETTABLEKS                       R10 R10 K9 ["useEffect"]
       94 NEWCLOSURE                       R11 P3
       95 CAPTURE                          VAL R2
       96 CAPTURE                          VAL R8
       97 CAPTURE                          VAL R5
       98 NEWTABLE                         R12 0 4
      100 MOVE                             R13 R5
      101 GETTABLEKS                       R14 R2 K10 ["parameterOverrides"]
      103 GETTABLEKS                       R15 R2 K11 ["numOverrides"]
      105 MOVE                             R16 R8
      106 SETLIST                          R12 R13 4 [1]
      108 CALL                             R10 2 0
      109 GETUPVAL                         R10 0
      110 GETTABLEKS                       R10 R10 K3 ["useMemo"]
      112 NEWCLOSURE                       R11 P4
      113 CAPTURE                          VAL R5
      114 CAPTURE                          VAL R4
      115 CAPTURE                          VAL R6
      116 CAPTURE                          VAL R7
      117 CAPTURE                          VAL R8
      118 CAPTURE                          VAL R9
      119 NEWTABLE                         R12 0 6
      121 MOVE                             R13 R5
      122 MOVE                             R14 R4
      123 MOVE                             R15 R6
      124 MOVE                             R16 R7
      125 MOVE                             R17 R8
      126 MOVE                             R18 R9
      127 SETLIST                          R12 R13 6 [1]
      129 CALL                             R10 2 1
      130 GETUPVAL                         R11 8
      131 GETTABLEKS                       R11 R11 K12 ["useReplicatedState"]
      133 LOADK                            R12 K13 ["AnimationParameterContext_AnimationParametersState"]
      134 MOVE                             R13 R5
      135 CALL                             R11 2 0
      136 GETUPVAL                         R11 8
      137 GETTABLEKS                       R11 R11 K12 ["useReplicatedState"]
      139 LOADK                            R12 K14 ["AnimationParameterContext_PreviewAnimationParametersState"]
      140 MOVE                             R13 R7
      141 CALL                             R11 2 0
      142 GETUPVAL                         R11 8
      143 GETTABLEKS                       R11 R11 K15 ["useBoundAction"]
      145 LOADK                            R12 K16 ["AnimationParameterContext_SetAnimationParameterAsync"]
      146 MOVE                             R13 R6
      147 CALL                             R11 2 0
      148 GETUPVAL                         R11 8
      149 GETTABLEKS                       R11 R11 K15 ["useBoundAction"]
      151 LOADK                            R12 K17 ["AnimationParameterContext_SetAnimationNodeParameterAsync"]
      152 MOVE                             R13 R6
      153 CALL                             R11 2 0
      154 GETUPVAL                         R11 8
      155 GETTABLEKS                       R11 R11 K15 ["useBoundAction"]
      157 LOADK                            R12 K18 ["AnimationParameterContext_SetPreviewAnimationParameters"]
      158 MOVE                             R13 R8
      159 CALL                             R11 2 0
      160 GETUPVAL                         R11 8
      161 GETTABLEKS                       R11 R11 K15 ["useBoundAction"]
      163 LOADK                            R12 K19 ["AnimationParameterContext_SetPreviewAnimationNodeParameterAsync"]
      164 MOVE                             R13 R9
      165 CALL                             R11 2 0
      166 GETUPVAL                         R11 0
      167 GETTABLEKS                       R11 R11 K20 ["createElement"]
      169 GETUPVAL                         R12 9
      170 GETTABLEKS                       R12 R12 K21 ["Provider"]
      172 DUPTABLE                         R13 K23 [{"value"}]
      173 SETTABLEKS                       R10 R13 K22 ["value"]
      175 GETTABLEKS                       R14 R0 K24 ["children"]
      177 CALL                             R11 3 -1
      178 RETURN                           R11 -1

PROTO_8:
        0 DUPTABLE                         R0 K7 [{"animationParameters", "observeAnimationParameters", "previewAnimationParameters", "setAnimationParameterAsync", "setAnimationNodeParameterAsync", "setPreviewAnimationParameters", "setPreviewAnimationNodeParameterAsync"}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["animationParameters"]
        4 GETUPVAL                         R1 1
        5 SETTABLEKS                       R1 R0 K1 ["observeAnimationParameters"]
        7 GETUPVAL                         R1 2
        8 SETTABLEKS                       R1 R0 K2 ["previewAnimationParameters"]
       10 GETUPVAL                         R1 3
       11 SETTABLEKS                       R1 R0 K3 ["setAnimationParameterAsync"]
       13 GETUPVAL                         R1 4
       14 SETTABLEKS                       R1 R0 K4 ["setAnimationNodeParameterAsync"]
       16 GETUPVAL                         R1 5
       17 SETTABLEKS                       R1 R0 K5 ["setPreviewAnimationParameters"]
       19 GETUPVAL                         R1 6
       20 SETTABLEKS                       R1 R0 K6 ["setPreviewAnimationNodeParameterAsync"]
       22 RETURN                           R0 1

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useReplicatedStateListener"]
        3 LOADK                            R2 K1 ["AnimationParameterContext_AnimationParametersState"]
        4 NEWTABLE                         R3 0 0
        6 CALL                             R1 2 1
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K0 ["useReplicatedStateListener"]
       10 LOADK                            R3 K2 ["AnimationParameterContext_PreviewAnimationParametersState"]
       11 LOADNIL                          R4
       12 CALL                             R2 2 1
       13 GETUPVAL                         R3 1
       14 MOVE                             R4 R1
       15 CALL                             R3 1 1
       16 GETUPVAL                         R4 0
       17 GETTABLEKS                       R4 R4 K3 ["useBoundAction"]
       19 LOADK                            R5 K4 ["AnimationParameterContext_SetAnimationParameterAsync"]
       20 CALL                             R4 1 1
       21 GETUPVAL                         R5 0
       22 GETTABLEKS                       R5 R5 K3 ["useBoundAction"]
       24 LOADK                            R6 K5 ["AnimationParameterContext_SetAnimationNodeParameterAsync"]
       25 CALL                             R5 1 1
       26 GETUPVAL                         R6 0
       27 GETTABLEKS                       R6 R6 K3 ["useBoundAction"]
       29 LOADK                            R7 K6 ["AnimationParameterContext_SetPreviewAnimationParameters"]
       30 CALL                             R6 1 1
       31 GETUPVAL                         R7 0
       32 GETTABLEKS                       R7 R7 K3 ["useBoundAction"]
       34 LOADK                            R8 K7 ["AnimationParameterContext_SetPreviewAnimationNodeParameterAsync"]
       35 CALL                             R7 1 1
       36 GETUPVAL                         R8 2
       37 GETTABLEKS                       R8 R8 K8 ["useMemo"]
       39 NEWCLOSURE                       R9 P0
       40 CAPTURE                          VAL R1
       41 CAPTURE                          VAL R3
       42 CAPTURE                          VAL R2
       43 CAPTURE                          VAL R4
       44 CAPTURE                          VAL R5
       45 CAPTURE                          VAL R6
       46 CAPTURE                          VAL R7
       47 NEWTABLE                         R10 0 7
       49 MOVE                             R11 R1
       50 MOVE                             R12 R3
       51 MOVE                             R13 R2
       52 MOVE                             R14 R4
       53 MOVE                             R15 R5
       54 MOVE                             R16 R6
       55 MOVE                             R17 R7
       56 SETLIST                          R10 R11 7 [1]
       58 CALL                             R8 2 1
       59 GETUPVAL                         R9 2
       60 GETTABLEKS                       R9 R9 K9 ["createElement"]
       62 GETUPVAL                         R10 3
       63 GETTABLEKS                       R10 R10 K10 ["Provider"]
       65 DUPTABLE                         R11 K12 [{"value"}]
       66 SETTABLEKS                       R8 R11 K11 ["value"]
       68 GETTABLEKS                       R12 R0 K13 ["children"]
       70 CALL                             R9 3 -1
       71 RETURN                           R9 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [game]
        9 LOADK                            R3 K6 ["ChangeHistoryService"]
       10 NAMECALL                         R1 R1 K7 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R3 R0 K10 ["Contexts"]
       17 GETTABLEKS                       R3 R3 K11 ["NativeGraphContext"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K9 [require]
       22 GETTABLEKS                       R4 R0 K12 ["Util"]
       24 GETTABLEKS                       R4 R4 K13 ["Networking"]
       26 GETTABLEKS                       R4 R4 K14 ["NetworkUtils"]
       28 CALL                             R3 1 1
       29 GETIMPORT                        R4 K9 [require]
       31 GETTABLEKS                       R5 R0 K15 ["Parent"]
       33 GETTABLEKS                       R5 R5 K16 ["NodeGraphing"]
       35 CALL                             R4 1 1
       36 GETIMPORT                        R5 K9 [require]
       38 GETTABLEKS                       R6 R0 K15 ["Parent"]
       40 GETTABLEKS                       R6 R6 K17 ["React"]
       42 CALL                             R5 1 1
       43 GETIMPORT                        R6 K9 [require]
       45 GETTABLEKS                       R7 R0 K15 ["Parent"]
       47 GETTABLEKS                       R7 R7 K18 ["ReactUtils"]
       49 CALL                             R6 1 1
       50 GETIMPORT                        R7 K9 [require]
       52 GETTABLEKS                       R8 R0 K10 ["Contexts"]
       54 GETTABLEKS                       R8 R8 K19 ["SelectedGraphContext"]
       56 CALL                             R7 1 1
       57 GETIMPORT                        R8 K9 [require]
       59 GETTABLEKS                       R9 R0 K15 ["Parent"]
       61 GETTABLEKS                       R9 R9 K20 ["Signals"]
       63 CALL                             R8 1 1
       64 GETIMPORT                        R9 K9 [require]
       66 GETTABLEKS                       R10 R0 K12 ["Util"]
       68 GETTABLEKS                       R10 R10 K20 ["Signals"]
       70 GETTABLEKS                       R10 R10 K21 ["SignalsInstanceUtils"]
       72 CALL                             R9 1 1
       73 GETIMPORT                        R10 K9 [require]
       75 GETTABLEKS                       R11 R0 K15 ["Parent"]
       77 GETTABLEKS                       R11 R11 K22 ["SignalsReact"]
       79 CALL                             R10 1 1
       80 GETIMPORT                        R11 K9 [require]
       82 GETTABLEKS                       R12 R0 K23 ["Flags"]
       84 GETTABLEKS                       R12 R12 K24 ["getFFlagAnimGraphUI_RunTimeDebug"]
       86 CALL                             R11 1 1
       87 GETIMPORT                        R12 K9 [require]
       89 GETTABLEKS                       R13 R0 K25 ["Hooks"]
       91 GETTABLEKS                       R13 R13 K26 ["useStateToSignal"]
       93 CALL                             R12 1 1
       94 DUPTABLE                         R13 K34 [{"animationParameters", "observeAnimationParameters", "setAnimationParameterAsync", "setAnimationNodeParameterAsync", "previewAnimationParameters", "setPreviewAnimationParameters", "setPreviewAnimationNodeParameterAsync"}]
       95 NEWTABLE                         R14 0 0
       97 SETTABLEKS                       R14 R13 K27 ["animationParameters"]
       99 GETTABLEKS                       R14 R9 K35 ["of"]
      101 NEWTABLE                         R15 0 0
      103 CALL                             R14 1 1
      104 SETTABLEKS                       R14 R13 K28 ["observeAnimationParameters"]
      106 GETTABLEKS                       R14 R6 K36 ["createUnimplemented"]
      108 LOADK                            R15 K29 ["setAnimationParameterAsync"]
      109 CALL                             R14 1 1
      110 SETTABLEKS                       R14 R13 K29 ["setAnimationParameterAsync"]
      112 GETTABLEKS                       R14 R6 K36 ["createUnimplemented"]
      114 LOADK                            R15 K30 ["setAnimationNodeParameterAsync"]
      115 CALL                             R14 1 1
      116 SETTABLEKS                       R14 R13 K30 ["setAnimationNodeParameterAsync"]
      118 NEWTABLE                         R14 0 0
      120 SETTABLEKS                       R14 R13 K31 ["previewAnimationParameters"]
      122 GETTABLEKS                       R14 R6 K36 ["createUnimplemented"]
      124 LOADK                            R15 K32 ["setPreviewAnimationParameters"]
      125 CALL                             R14 1 1
      126 SETTABLEKS                       R14 R13 K32 ["setPreviewAnimationParameters"]
      128 GETTABLEKS                       R14 R6 K36 ["createUnimplemented"]
      130 LOADK                            R15 K33 ["setPreviewAnimationNodeParameterAsync"]
      131 CALL                             R14 1 1
      132 SETTABLEKS                       R14 R13 K33 ["setPreviewAnimationNodeParameterAsync"]
      134 GETTABLEKS                       R14 R5 K37 ["createContext"]
      136 MOVE                             R15 R13
      137 CALL                             R14 1 1
      138 DUPTABLE                         R15 K42 [{["PREVIEW_ANIMATION_PARAMETERS_MAP"] = "AnimationParameterContext_PreviewAnimationParametersState", ["ANIMATION_PARAMETERS_MAP"] = "AnimationParameterContext_AnimationParametersState"}]
      139 DUPTABLE                         R16 K51 [{["SET_ANIMATION_PARAMETER"] = "AnimationParameterContext_SetAnimationParameterAsync", ["SET_ANIMATION_NODE_PARAMETER"] = "AnimationParameterContext_SetAnimationNodeParameterAsync", ["SET_PREVIEW_ANIMATION_PARAMETERS"] = "AnimationParameterContext_SetPreviewAnimationParameters", ["SET_PREVIEW_ANIMATION_NODE_PARAMETER"] = "AnimationParameterContext_SetPreviewAnimationNodeParameterAsync"}]
      140 DUPCLOSURE                       R17 K52 [PROTO_7]
      141 CAPTURE                          VAL R5
      142 CAPTURE                          VAL R2
      143 CAPTURE                          VAL R4
      144 CAPTURE                          VAL R11
      145 CAPTURE                          VAL R7
      146 CAPTURE                          VAL R9
      147 CAPTURE                          VAL R10
      148 CAPTURE                          VAL R1
      149 CAPTURE                          VAL R3
      150 CAPTURE                          VAL R14
      151 DUPCLOSURE                       R18 K53 [PROTO_9]
      152 CAPTURE                          VAL R3
      153 CAPTURE                          VAL R12
      154 CAPTURE                          VAL R5
      155 CAPTURE                          VAL R14
      156 DUPTABLE                         R19 K57 [{"Context", "EditableDataModelProvider", "UIDataModelProvider"}]
      157 SETTABLEKS                       R14 R19 K54 ["Context"]
      159 SETTABLEKS                       R17 R19 K55 ["EditableDataModelProvider"]
      161 SETTABLEKS                       R18 R19 K56 ["UIDataModelProvider"]
      163 RETURN                           R19 1
