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
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["observeSelectedGraphInstance"]
        6 DUPCLOSURE                       R2 K2 [PROTO_0]
        7 CAPTURE                          UPVAL U0
        8 CALL                             R0 2 -1
        9 RETURN                           R0 -1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["observeSelectedGraphInstance"]
        3 LOADB                            R3 0
        4 CALL                             R2 1 1
        5 JUMPIF                           R2 ; [+5]
        6 GETIMPORT                        R3 K2 [warn]
        8 LOADK                            R4 K3 ["[AnimationParameterContext] No graph selected, cannot set parameter"]
        9 CALL                             R3 1 0
       10 RETURN                           R0 0
       11 GETUPVAL                         R3 1
       12 LOADK                            R5 K4 ["AnimationParameterContext"]
       13 LOADK                            R6 K5 ["setAnimationParameter"]
       14 NAMECALL                         R3 R3 K6 ["TryBeginRecording"]
       16 CALL                             R3 3 1
       17 MOVE                             R6 R0
       18 MOVE                             R7 R1
       19 NAMECALL                         R4 R2 K7 ["SetAttribute"]
       21 CALL                             R4 3 0
       22 JUMPIFNOT                        R3 ; [+7]
       23 GETUPVAL                         R4 1
       24 MOVE                             R6 R3
       25 GETIMPORT                        R7 K11 [Enum.FinishRecordingOperation.Commit]
       27 NAMECALL                         R4 R4 K12 ["FinishRecording"]
       29 CALL                             R4 3 0
       30 RETURN                           R0 0

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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K2 ["useMemo"]
       10 NEWCLOSURE                       R3 P0
       11 CAPTURE                          UPVAL U2
       12 CAPTURE                          VAL R1
       13 NEWTABLE                         R4 0 1
       15 GETTABLEKS                       R5 R1 K3 ["observeSelectedGraphInstance"]
       17 SETLIST                          R4 R5 1 [1]
       19 CALL                             R2 2 1
       20 GETUPVAL                         R3 3
       21 GETTABLEKS                       R3 R3 K4 ["useSignalState"]
       23 MOVE                             R4 R2
       24 CALL                             R3 1 1
       25 GETUPVAL                         R4 0
       26 GETTABLEKS                       R4 R4 K5 ["useCallback"]
       28 NEWCLOSURE                       R5 P1
       29 CAPTURE                          VAL R1
       30 CAPTURE                          UPVAL U4
       31 NEWTABLE                         R6 0 1
       33 GETTABLEKS                       R7 R1 K3 ["observeSelectedGraphInstance"]
       35 SETLIST                          R6 R7 1 [1]
       37 CALL                             R4 2 1
       38 GETUPVAL                         R5 0
       39 GETTABLEKS                       R5 R5 K6 ["useState"]
       41 LOADNIL                          R6
       42 CALL                             R5 1 2
       43 GETUPVAL                         R7 0
       44 GETTABLEKS                       R7 R7 K5 ["useCallback"]
       46 NEWCLOSURE                       R8 P2
       47 CAPTURE                          VAL R6
       48 NEWTABLE                         R9 0 1
       50 MOVE                             R10 R6
       51 SETLIST                          R9 R10 1 [1]
       53 CALL                             R7 2 1
       54 DUPTABLE                         R8 K14 [{"animationParameters", "observeAnimationParameters", "setAnimationParameterAsync", "setAnimationNodeParameterAsync", "previewAnimationParameters", "setPreviewAnimationParameters", "setPreviewAnimationNodeParameterAsync"}]
       55 SETTABLEKS                       R3 R8 K7 ["animationParameters"]
       57 SETTABLEKS                       R2 R8 K8 ["observeAnimationParameters"]
       59 SETTABLEKS                       R4 R8 K9 ["setAnimationParameterAsync"]
       61 SETTABLEKS                       R4 R8 K10 ["setAnimationNodeParameterAsync"]
       63 SETTABLEKS                       R5 R8 K11 ["previewAnimationParameters"]
       65 SETTABLEKS                       R6 R8 K12 ["setPreviewAnimationParameters"]
       67 SETTABLEKS                       R7 R8 K13 ["setPreviewAnimationNodeParameterAsync"]
       69 GETUPVAL                         R9 5
       70 GETTABLEKS                       R9 R9 K15 ["useReplicatedState"]
       72 GETUPVAL                         R10 6
       73 GETTABLEKS                       R10 R10 K16 ["ANIMATION_PARAMETERS_MAP"]
       75 MOVE                             R11 R3
       76 CALL                             R9 2 0
       77 GETUPVAL                         R9 5
       78 GETTABLEKS                       R9 R9 K15 ["useReplicatedState"]
       80 GETUPVAL                         R10 6
       81 GETTABLEKS                       R10 R10 K17 ["PREVIEW_ANIMATION_PARAMETERS_MAP"]
       83 MOVE                             R11 R5
       84 CALL                             R9 2 0
       85 GETUPVAL                         R9 5
       86 GETTABLEKS                       R9 R9 K18 ["useBoundAction"]
       88 GETUPVAL                         R10 7
       89 GETTABLEKS                       R10 R10 K19 ["SET_ANIMATION_PARAMETER"]
       91 MOVE                             R11 R4
       92 CALL                             R9 2 0
       93 GETUPVAL                         R9 5
       94 GETTABLEKS                       R9 R9 K18 ["useBoundAction"]
       96 GETUPVAL                         R10 7
       97 GETTABLEKS                       R10 R10 K20 ["SET_ANIMATION_NODE_PARAMETER"]
       99 MOVE                             R11 R4
      100 CALL                             R9 2 0
      101 GETUPVAL                         R9 5
      102 GETTABLEKS                       R9 R9 K18 ["useBoundAction"]
      104 GETUPVAL                         R10 7
      105 GETTABLEKS                       R10 R10 K21 ["SET_PREVIEW_ANIMATION_PARAMETERS"]
      107 MOVE                             R11 R6
      108 CALL                             R9 2 0
      109 GETUPVAL                         R9 5
      110 GETTABLEKS                       R9 R9 K18 ["useBoundAction"]
      112 GETUPVAL                         R10 7
      113 GETTABLEKS                       R10 R10 K22 ["SET_PREVIEW_ANIMATION_NODE_PARAMETER"]
      115 MOVE                             R11 R7
      116 CALL                             R9 2 0
      117 GETUPVAL                         R9 0
      118 GETTABLEKS                       R9 R9 K23 ["createElement"]
      120 GETUPVAL                         R10 8
      121 GETTABLEKS                       R10 R10 K24 ["Provider"]
      123 DUPTABLE                         R11 K26 [{"value"}]
      124 SETTABLEKS                       R8 R11 K25 ["value"]
      126 GETTABLEKS                       R12 R0 K27 ["children"]
      128 CALL                             R9 3 -1
      129 RETURN                           R9 -1

PROTO_6:
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
       20 DUPTABLE                         R4 K10 [{"animationParameters", "observeAnimationParameters", "previewAnimationParameters", "setAnimationParameterAsync", "setAnimationNodeParameterAsync", "setPreviewAnimationParameters", "setPreviewAnimationNodeParameterAsync"}]
       21 SETTABLEKS                       R1 R4 K3 ["animationParameters"]
       23 SETTABLEKS                       R3 R4 K4 ["observeAnimationParameters"]
       25 SETTABLEKS                       R2 R4 K5 ["previewAnimationParameters"]
       27 GETUPVAL                         R5 0
       28 GETTABLEKS                       R5 R5 K11 ["useBoundAction"]
       30 GETUPVAL                         R6 3
       31 GETTABLEKS                       R6 R6 K12 ["SET_ANIMATION_PARAMETER"]
       33 CALL                             R5 1 1
       34 SETTABLEKS                       R5 R4 K6 ["setAnimationParameterAsync"]
       36 GETUPVAL                         R5 0
       37 GETTABLEKS                       R5 R5 K11 ["useBoundAction"]
       39 GETUPVAL                         R6 3
       40 GETTABLEKS                       R6 R6 K13 ["SET_ANIMATION_NODE_PARAMETER"]
       42 CALL                             R5 1 1
       43 SETTABLEKS                       R5 R4 K7 ["setAnimationNodeParameterAsync"]
       45 GETUPVAL                         R5 0
       46 GETTABLEKS                       R5 R5 K11 ["useBoundAction"]
       48 GETUPVAL                         R6 3
       49 GETTABLEKS                       R6 R6 K14 ["SET_PREVIEW_ANIMATION_PARAMETERS"]
       51 CALL                             R5 1 1
       52 SETTABLEKS                       R5 R4 K8 ["setPreviewAnimationParameters"]
       54 GETUPVAL                         R5 0
       55 GETTABLEKS                       R5 R5 K11 ["useBoundAction"]
       57 GETUPVAL                         R6 3
       58 GETTABLEKS                       R6 R6 K15 ["SET_PREVIEW_ANIMATION_NODE_PARAMETER"]
       60 CALL                             R5 1 1
       61 SETTABLEKS                       R5 R4 K9 ["setPreviewAnimationNodeParameterAsync"]
       63 GETUPVAL                         R5 4
       64 GETTABLEKS                       R5 R5 K16 ["createElement"]
       66 GETUPVAL                         R6 5
       67 GETTABLEKS                       R6 R6 K17 ["Provider"]
       69 DUPTABLE                         R7 K19 [{"value"}]
       70 SETTABLEKS                       R4 R7 K18 ["value"]
       72 GETTABLEKS                       R8 R0 K20 ["children"]
       74 CALL                             R5 3 -1
       75 RETURN                           R5 -1

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
       33 GETTABLEKS                       R5 R5 K16 ["React"]
       35 CALL                             R4 1 1
       36 GETIMPORT                        R5 K9 [require]
       38 GETTABLEKS                       R6 R0 K15 ["Parent"]
       40 GETTABLEKS                       R6 R6 K17 ["ReactUtils"]
       42 CALL                             R5 1 1
       43 GETIMPORT                        R6 K9 [require]
       45 GETTABLEKS                       R7 R0 K15 ["Parent"]
       47 GETTABLEKS                       R7 R7 K18 ["Signals"]
       49 CALL                             R6 1 1
       50 GETIMPORT                        R7 K9 [require]
       52 GETTABLEKS                       R8 R0 K12 ["Util"]
       54 GETTABLEKS                       R8 R8 K18 ["Signals"]
       56 GETTABLEKS                       R8 R8 K19 ["SignalsInstanceUtils"]
       58 CALL                             R7 1 1
       59 GETIMPORT                        R8 K9 [require]
       61 GETTABLEKS                       R9 R0 K15 ["Parent"]
       63 GETTABLEKS                       R9 R9 K20 ["SignalsReact"]
       65 CALL                             R8 1 1
       66 GETIMPORT                        R9 K9 [require]
       68 GETTABLEKS                       R10 R0 K21 ["Hooks"]
       70 GETTABLEKS                       R10 R10 K22 ["useStateToSignal"]
       72 CALL                             R9 1 1
       73 DUPTABLE                         R10 K30 [{"animationParameters", "observeAnimationParameters", "setAnimationParameterAsync", "setAnimationNodeParameterAsync", "previewAnimationParameters", "setPreviewAnimationParameters", "setPreviewAnimationNodeParameterAsync"}]
       74 NEWTABLE                         R11 0 0
       76 SETTABLEKS                       R11 R10 K23 ["animationParameters"]
       78 GETTABLEKS                       R11 R7 K31 ["of"]
       80 NEWTABLE                         R12 0 0
       82 CALL                             R11 1 1
       83 SETTABLEKS                       R11 R10 K24 ["observeAnimationParameters"]
       85 GETTABLEKS                       R11 R5 K32 ["createUnimplemented"]
       87 LOADK                            R12 K25 ["setAnimationParameterAsync"]
       88 CALL                             R11 1 1
       89 SETTABLEKS                       R11 R10 K25 ["setAnimationParameterAsync"]
       91 GETTABLEKS                       R11 R5 K32 ["createUnimplemented"]
       93 LOADK                            R12 K26 ["setAnimationNodeParameterAsync"]
       94 CALL                             R11 1 1
       95 SETTABLEKS                       R11 R10 K26 ["setAnimationNodeParameterAsync"]
       97 NEWTABLE                         R11 0 0
       99 SETTABLEKS                       R11 R10 K27 ["previewAnimationParameters"]
      101 GETTABLEKS                       R11 R5 K32 ["createUnimplemented"]
      103 LOADK                            R12 K28 ["setPreviewAnimationParameters"]
      104 CALL                             R11 1 1
      105 SETTABLEKS                       R11 R10 K28 ["setPreviewAnimationParameters"]
      107 GETTABLEKS                       R11 R5 K32 ["createUnimplemented"]
      109 LOADK                            R12 K29 ["setPreviewAnimationNodeParameterAsync"]
      110 CALL                             R11 1 1
      111 SETTABLEKS                       R11 R10 K29 ["setPreviewAnimationNodeParameterAsync"]
      113 GETTABLEKS                       R11 R4 K33 ["createContext"]
      115 MOVE                             R12 R10
      116 CALL                             R11 1 1
      117 DUPTABLE                         R12 K36 [{"PREVIEW_ANIMATION_PARAMETERS_MAP", "ANIMATION_PARAMETERS_MAP"}]
      118 LOADK                            R13 K37 ["AnimationParameterContext_PreviewAnimationParametersState"]
      119 SETTABLEKS                       R13 R12 K34 ["PREVIEW_ANIMATION_PARAMETERS_MAP"]
      121 LOADK                            R13 K38 ["AnimationParameterContext_AnimationParametersState"]
      122 SETTABLEKS                       R13 R12 K35 ["ANIMATION_PARAMETERS_MAP"]
      124 DUPTABLE                         R13 K43 [{"SET_ANIMATION_PARAMETER", "SET_ANIMATION_NODE_PARAMETER", "SET_PREVIEW_ANIMATION_PARAMETERS", "SET_PREVIEW_ANIMATION_NODE_PARAMETER"}]
      125 LOADK                            R14 K44 ["AnimationParameterContext_SetAnimationParameterAsync"]
      126 SETTABLEKS                       R14 R13 K39 ["SET_ANIMATION_PARAMETER"]
      128 LOADK                            R14 K45 ["AnimationParameterContext_SetAnimationNodeParameterAsync"]
      129 SETTABLEKS                       R14 R13 K40 ["SET_ANIMATION_NODE_PARAMETER"]
      131 LOADK                            R14 K46 ["AnimationParameterContext_SetPreviewAnimationParameters"]
      132 SETTABLEKS                       R14 R13 K41 ["SET_PREVIEW_ANIMATION_PARAMETERS"]
      134 LOADK                            R14 K47 ["AnimationParameterContext_SetPreviewAnimationNodeParameterAsync"]
      135 SETTABLEKS                       R14 R13 K42 ["SET_PREVIEW_ANIMATION_NODE_PARAMETER"]
      137 DUPCLOSURE                       R14 K48 [PROTO_5]
      138 CAPTURE                          VAL R4
      139 CAPTURE                          VAL R2
      140 CAPTURE                          VAL R7
      141 CAPTURE                          VAL R8
      142 CAPTURE                          VAL R1
      143 CAPTURE                          VAL R3
      144 CAPTURE                          VAL R12
      145 CAPTURE                          VAL R13
      146 CAPTURE                          VAL R11
      147 DUPCLOSURE                       R15 K49 [PROTO_6]
      148 CAPTURE                          VAL R3
      149 CAPTURE                          VAL R12
      150 CAPTURE                          VAL R9
      151 CAPTURE                          VAL R13
      152 CAPTURE                          VAL R4
      153 CAPTURE                          VAL R11
      154 DUPTABLE                         R16 K53 [{"Context", "EditableDataModelProvider", "UIDataModelProvider"}]
      155 SETTABLEKS                       R11 R16 K50 ["Context"]
      157 SETTABLEKS                       R14 R16 K51 ["EditableDataModelProvider"]
      159 SETTABLEKS                       R15 R16 K52 ["UIDataModelProvider"]
      161 RETURN                           R16 1
