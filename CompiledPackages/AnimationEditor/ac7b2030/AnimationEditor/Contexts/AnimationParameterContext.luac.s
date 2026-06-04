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
      133 GETUPVAL                         R12 9
      134 GETTABLEKS                       R12 R12 K13 ["ANIMATION_PARAMETERS_MAP"]
      136 MOVE                             R13 R5
      137 CALL                             R11 2 0
      138 GETUPVAL                         R11 8
      139 GETTABLEKS                       R11 R11 K12 ["useReplicatedState"]
      141 GETUPVAL                         R12 9
      142 GETTABLEKS                       R12 R12 K14 ["PREVIEW_ANIMATION_PARAMETERS_MAP"]
      144 MOVE                             R13 R7
      145 CALL                             R11 2 0
      146 GETUPVAL                         R11 8
      147 GETTABLEKS                       R11 R11 K15 ["useBoundAction"]
      149 GETUPVAL                         R12 10
      150 GETTABLEKS                       R12 R12 K16 ["SET_ANIMATION_PARAMETER"]
      152 MOVE                             R13 R6
      153 CALL                             R11 2 0
      154 GETUPVAL                         R11 8
      155 GETTABLEKS                       R11 R11 K15 ["useBoundAction"]
      157 GETUPVAL                         R12 10
      158 GETTABLEKS                       R12 R12 K17 ["SET_ANIMATION_NODE_PARAMETER"]
      160 MOVE                             R13 R6
      161 CALL                             R11 2 0
      162 GETUPVAL                         R11 8
      163 GETTABLEKS                       R11 R11 K15 ["useBoundAction"]
      165 GETUPVAL                         R12 10
      166 GETTABLEKS                       R12 R12 K18 ["SET_PREVIEW_ANIMATION_PARAMETERS"]
      168 MOVE                             R13 R8
      169 CALL                             R11 2 0
      170 GETUPVAL                         R11 8
      171 GETTABLEKS                       R11 R11 K15 ["useBoundAction"]
      173 GETUPVAL                         R12 10
      174 GETTABLEKS                       R12 R12 K19 ["SET_PREVIEW_ANIMATION_NODE_PARAMETER"]
      176 MOVE                             R13 R9
      177 CALL                             R11 2 0
      178 GETUPVAL                         R11 0
      179 GETTABLEKS                       R11 R11 K20 ["createElement"]
      181 GETUPVAL                         R12 11
      182 GETTABLEKS                       R12 R12 K21 ["Provider"]
      184 DUPTABLE                         R13 K23 [{"value"}]
      185 SETTABLEKS                       R10 R13 K22 ["value"]
      187 GETTABLEKS                       R14 R0 K24 ["children"]
      189 CALL                             R11 3 -1
      190 RETURN                           R11 -1

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
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["ANIMATION_PARAMETERS_MAP"]
        6 NEWTABLE                         R3 0 0
        8 CALL                             R1 2 1
        9 GETUPVAL                         R2 0
       10 GETTABLEKS                       R2 R2 K0 ["useReplicatedStateListener"]
       12 GETUPVAL                         R3 1
       13 GETTABLEKS                       R3 R3 K2 ["PREVIEW_ANIMATION_PARAMETERS_MAP"]
       15 LOADNIL                          R4
       16 CALL                             R2 2 1
       17 GETUPVAL                         R3 2
       18 MOVE                             R4 R1
       19 CALL                             R3 1 1
       20 GETUPVAL                         R4 0
       21 GETTABLEKS                       R4 R4 K3 ["useBoundAction"]
       23 GETUPVAL                         R5 3
       24 GETTABLEKS                       R5 R5 K4 ["SET_ANIMATION_PARAMETER"]
       26 CALL                             R4 1 1
       27 GETUPVAL                         R5 0
       28 GETTABLEKS                       R5 R5 K3 ["useBoundAction"]
       30 GETUPVAL                         R6 3
       31 GETTABLEKS                       R6 R6 K5 ["SET_ANIMATION_NODE_PARAMETER"]
       33 CALL                             R5 1 1
       34 GETUPVAL                         R6 0
       35 GETTABLEKS                       R6 R6 K3 ["useBoundAction"]
       37 GETUPVAL                         R7 3
       38 GETTABLEKS                       R7 R7 K6 ["SET_PREVIEW_ANIMATION_PARAMETERS"]
       40 CALL                             R6 1 1
       41 GETUPVAL                         R7 0
       42 GETTABLEKS                       R7 R7 K3 ["useBoundAction"]
       44 GETUPVAL                         R8 3
       45 GETTABLEKS                       R8 R8 K7 ["SET_PREVIEW_ANIMATION_NODE_PARAMETER"]
       47 CALL                             R7 1 1
       48 GETUPVAL                         R8 4
       49 GETTABLEKS                       R8 R8 K8 ["useMemo"]
       51 NEWCLOSURE                       R9 P0
       52 CAPTURE                          VAL R1
       53 CAPTURE                          VAL R3
       54 CAPTURE                          VAL R2
       55 CAPTURE                          VAL R4
       56 CAPTURE                          VAL R5
       57 CAPTURE                          VAL R6
       58 CAPTURE                          VAL R7
       59 NEWTABLE                         R10 0 7
       61 MOVE                             R11 R1
       62 MOVE                             R12 R3
       63 MOVE                             R13 R2
       64 MOVE                             R14 R4
       65 MOVE                             R15 R5
       66 MOVE                             R16 R6
       67 MOVE                             R17 R7
       68 SETLIST                          R10 R11 7 [1]
       70 CALL                             R8 2 1
       71 GETUPVAL                         R9 4
       72 GETTABLEKS                       R9 R9 K9 ["createElement"]
       74 GETUPVAL                         R10 5
       75 GETTABLEKS                       R10 R10 K10 ["Provider"]
       77 DUPTABLE                         R11 K12 [{"value"}]
       78 SETTABLEKS                       R8 R11 K11 ["value"]
       80 GETTABLEKS                       R12 R0 K13 ["children"]
       82 CALL                             R9 3 -1
       83 RETURN                           R9 -1

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
      138 DUPTABLE                         R15 K40 [{"PREVIEW_ANIMATION_PARAMETERS_MAP", "ANIMATION_PARAMETERS_MAP"}]
      139 LOADK                            R16 K41 ["AnimationParameterContext_PreviewAnimationParametersState"]
      140 SETTABLEKS                       R16 R15 K38 ["PREVIEW_ANIMATION_PARAMETERS_MAP"]
      142 LOADK                            R16 K42 ["AnimationParameterContext_AnimationParametersState"]
      143 SETTABLEKS                       R16 R15 K39 ["ANIMATION_PARAMETERS_MAP"]
      145 DUPTABLE                         R16 K47 [{"SET_ANIMATION_PARAMETER", "SET_ANIMATION_NODE_PARAMETER", "SET_PREVIEW_ANIMATION_PARAMETERS", "SET_PREVIEW_ANIMATION_NODE_PARAMETER"}]
      146 LOADK                            R17 K48 ["AnimationParameterContext_SetAnimationParameterAsync"]
      147 SETTABLEKS                       R17 R16 K43 ["SET_ANIMATION_PARAMETER"]
      149 LOADK                            R17 K49 ["AnimationParameterContext_SetAnimationNodeParameterAsync"]
      150 SETTABLEKS                       R17 R16 K44 ["SET_ANIMATION_NODE_PARAMETER"]
      152 LOADK                            R17 K50 ["AnimationParameterContext_SetPreviewAnimationParameters"]
      153 SETTABLEKS                       R17 R16 K45 ["SET_PREVIEW_ANIMATION_PARAMETERS"]
      155 LOADK                            R17 K51 ["AnimationParameterContext_SetPreviewAnimationNodeParameterAsync"]
      156 SETTABLEKS                       R17 R16 K46 ["SET_PREVIEW_ANIMATION_NODE_PARAMETER"]
      158 DUPCLOSURE                       R17 K52 [PROTO_7]
      159 CAPTURE                          VAL R5
      160 CAPTURE                          VAL R2
      161 CAPTURE                          VAL R4
      162 CAPTURE                          VAL R11
      163 CAPTURE                          VAL R7
      164 CAPTURE                          VAL R9
      165 CAPTURE                          VAL R10
      166 CAPTURE                          VAL R1
      167 CAPTURE                          VAL R3
      168 CAPTURE                          VAL R15
      169 CAPTURE                          VAL R16
      170 CAPTURE                          VAL R14
      171 DUPCLOSURE                       R18 K53 [PROTO_9]
      172 CAPTURE                          VAL R3
      173 CAPTURE                          VAL R15
      174 CAPTURE                          VAL R12
      175 CAPTURE                          VAL R16
      176 CAPTURE                          VAL R5
      177 CAPTURE                          VAL R14
      178 DUPTABLE                         R19 K57 [{"Context", "EditableDataModelProvider", "UIDataModelProvider"}]
      179 SETTABLEKS                       R14 R19 K54 ["Context"]
      181 SETTABLEKS                       R17 R19 K55 ["EditableDataModelProvider"]
      183 SETTABLEKS                       R18 R19 K56 ["UIDataModelProvider"]
      185 RETURN                           R19 1
