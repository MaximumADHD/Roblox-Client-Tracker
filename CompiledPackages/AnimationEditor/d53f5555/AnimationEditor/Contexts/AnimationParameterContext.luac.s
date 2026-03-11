PROTO_0:
        0 JUMPIFNOT                        R0 ; [+6]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R1 R2 K0 ["observeAttributes"]
        4 MOVE                             R2 R0
        5 CALL                             R1 1 -1
        6 RETURN                           R1 -1
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R1 R2 K1 ["of"]
       10 NEWTABLE                         R2 0 0
       12 CALL                             R1 1 -1
       13 RETURN                           R1 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["switchMap"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R1 R2 K1 ["getSelectedGraphInstance"]
        6 DUPCLOSURE                       R2 K2 [PROTO_0]
        7 CAPTURE                          UPVAL U0
        8 CALL                             R0 2 -1
        9 RETURN                           R0 -1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["getSelectedGraphInstance"]
        3 CALL                             R0 0 -1
        4 RETURN                           R0 -1

PROTO_3:
        0 GETUPVAL                         R2 0
        1 JUMPIF                           R2 ; [+1]
        2 RETURN                           R0 0
        3 GETUPVAL                         R2 1
        4 LOADK                            R4 K0 ["AnimationParameterContext"]
        5 LOADK                            R5 K1 ["setAnimationParameter"]
        6 NAMECALL                         R2 R2 K2 ["TryBeginRecording"]
        8 CALL                             R2 3 1
        9 GETUPVAL                         R3 0
       10 MOVE                             R5 R0
       11 MOVE                             R6 R1
       12 NAMECALL                         R3 R3 K3 ["SetAttribute"]
       14 CALL                             R3 3 0
       15 JUMPIFNOT                        R2 ; [+7]
       16 GETUPVAL                         R3 1
       17 MOVE                             R5 R2
       18 GETIMPORT                        R6 K7 [Enum.FinishRecordingOperation.Commit]
       20 NAMECALL                         R3 R3 K8 ["FinishRecording"]
       22 CALL                             R3 3 0
       23 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R3 0
        1 JUMPIF                           R3 ; [+1]
        2 RETURN                           R0 0
        3 GETUPVAL                         R3 0
        4 MOVE                             R5 R2
        5 NAMECALL                         R3 R3 K0 ["GetAttribute"]
        7 CALL                             R3 2 1
        8 JUMPIFEQKNIL                     R3 ; [+2]
       10 RETURN                           R0 0
       11 GETUPVAL                         R3 0
       12 MOVE                             R5 R1
       13 NAMECALL                         R3 R3 K0 ["GetAttribute"]
       15 CALL                             R3 2 1
       16 JUMPIF                           R3 ; [+1]
       17 RETURN                           R0 0
       18 GETUPVAL                         R4 1
       19 LOADK                            R6 K1 ["AnimationParameterContext"]
       20 LOADK                            R7 K2 ["renameAnimationParameter"]
       21 NAMECALL                         R4 R4 K3 ["TryBeginRecording"]
       23 CALL                             R4 3 1
       24 GETUPVAL                         R5 0
       25 MOVE                             R7 R1
       26 LOADNIL                          R8
       27 NAMECALL                         R5 R5 K4 ["SetAttribute"]
       29 CALL                             R5 3 0
       30 GETUPVAL                         R5 0
       31 MOVE                             R7 R2
       32 MOVE                             R8 R3
       33 NAMECALL                         R5 R5 K4 ["SetAttribute"]
       35 CALL                             R5 3 0
       36 GETUPVAL                         R6 2
       37 GETTABLEKS                       R5 R6 K5 ["renameParameterAsync"]
       39 MOVE                             R6 R0
       40 MOVE                             R7 R1
       41 MOVE                             R8 R2
       42 CALL                             R5 3 0
       43 JUMPIFNOT                        R4 ; [+7]
       44 GETUPVAL                         R5 1
       45 MOVE                             R7 R4
       46 GETIMPORT                        R8 K9 [Enum.FinishRecordingOperation.Commit]
       48 NAMECALL                         R5 R5 K10 ["FinishRecording"]
       50 CALL                             R5 3 0
       51 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 MOVE                             R4 R1
        3 CALL                             R2 2 0
        4 RETURN                           R0 0

PROTO_6:
        0 GETIMPORT                        R3 K2 [table.clone]
        2 MOVE                             R4 R0
        3 CALL                             R3 1 1
        4 FASTCALL1                        TONUMBER R2 ; [+3]
        5 MOVE                             R6 R2
        6 GETIMPORT                        R5 K4 [tonumber]
        8 CALL                             R5 1 1
        9 OR                               R4 R5 R2
       10 SETTABLE                         R4 R3 R1
       11 RETURN                           R3 1

PROTO_7:
        0 GETUPVAL                         R2 0
        1 JUMPIF                           R2 ; [+1]
        2 RETURN                           R0 0
        3 GETUPVAL                         R2 1
        4 GETUPVAL                         R4 0
        5 GETIMPORT                        R5 K2 [table.clone]
        7 MOVE                             R6 R4
        8 CALL                             R5 1 1
        9 FASTCALL1                        TONUMBER R1 ; [+3]
       10 MOVE                             R8 R1
       11 GETIMPORT                        R7 K4 [tonumber]
       13 CALL                             R7 1 1
       14 OR                               R6 R7 R1
       15 SETTABLE                         R6 R5 R0
       16 MOVE                             R3 R5
       17 CALL                             R2 1 0
       18 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useContext"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R2 R3 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R3 2
        8 GETTABLEKS                       R2 R3 K2 ["useSignalState"]
       10 GETUPVAL                         R4 0
       11 GETTABLEKS                       R3 R4 K3 ["useMemo"]
       13 NEWCLOSURE                       R4 P0
       14 CAPTURE                          UPVAL U3
       15 CAPTURE                          VAL R1
       16 NEWTABLE                         R5 0 1
       18 GETTABLEKS                       R6 R1 K4 ["getSelectedGraphInstance"]
       20 SETLIST                          R5 R6 1 [1]
       22 CALL                             R3 2 -1
       23 CALL                             R2 -1 1
       24 GETUPVAL                         R4 0
       25 GETTABLEKS                       R3 R4 K3 ["useMemo"]
       27 NEWCLOSURE                       R4 P1
       28 CAPTURE                          VAL R1
       29 NEWTABLE                         R5 0 1
       31 GETTABLEKS                       R6 R1 K4 ["getSelectedGraphInstance"]
       33 SETLIST                          R5 R6 1 [1]
       35 CALL                             R3 2 1
       36 GETUPVAL                         R5 0
       37 GETTABLEKS                       R4 R5 K5 ["useCallback"]
       39 NEWCLOSURE                       R5 P2
       40 CAPTURE                          VAL R3
       41 CAPTURE                          UPVAL U4
       42 NEWTABLE                         R6 0 1
       44 MOVE                             R7 R3
       45 SETLIST                          R6 R7 1 [1]
       47 CALL                             R4 2 1
       48 GETUPVAL                         R6 0
       49 GETTABLEKS                       R5 R6 K5 ["useCallback"]
       51 NEWCLOSURE                       R6 P3
       52 CAPTURE                          VAL R3
       53 CAPTURE                          UPVAL U4
       54 CAPTURE                          VAL R1
       55 NEWTABLE                         R7 0 2
       57 MOVE                             R8 R3
       58 GETTABLEKS                       R9 R1 K6 ["renameParameterAsync"]
       60 SETLIST                          R7 R8 2 [1]
       62 CALL                             R5 2 1
       63 GETUPVAL                         R7 0
       64 GETTABLEKS                       R6 R7 K7 ["useState"]
       66 LOADNIL                          R7
       67 CALL                             R6 1 2
       68 GETUPVAL                         R9 0
       69 GETTABLEKS                       R8 R9 K5 ["useCallback"]
       71 NEWCLOSURE                       R9 P4
       72 CAPTURE                          VAL R4
       73 NEWTABLE                         R10 0 2
       75 MOVE                             R11 R2
       76 MOVE                             R12 R4
       77 SETLIST                          R10 R11 2 [1]
       79 CALL                             R8 2 1
       80 DUPCLOSURE                       R9 K8 [PROTO_6]
       81 GETUPVAL                         R11 0
       82 GETTABLEKS                       R10 R11 K5 ["useCallback"]
       84 NEWCLOSURE                       R11 P6
       85 CAPTURE                          VAL R6
       86 CAPTURE                          VAL R7
       87 NEWTABLE                         R12 0 2
       89 MOVE                             R13 R6
       90 MOVE                             R14 R7
       91 SETLIST                          R12 R13 2 [1]
       93 CALL                             R10 2 1
       94 DUPTABLE                         R11 K16 [{"animationParameters", "setAnimationParameterAsync", "setAnimationNodeParameterAsync", "renameAnimationParameterAsync", "previewAnimationParameters", "setPreviewAnimationParameters", "setPreviewAnimationNodeParameterAsync"}]
       95 SETTABLEKS                       R2 R11 K9 ["animationParameters"]
       97 SETTABLEKS                       R4 R11 K10 ["setAnimationParameterAsync"]
       99 SETTABLEKS                       R8 R11 K11 ["setAnimationNodeParameterAsync"]
      101 SETTABLEKS                       R5 R11 K12 ["renameAnimationParameterAsync"]
      103 SETTABLEKS                       R6 R11 K13 ["previewAnimationParameters"]
      105 SETTABLEKS                       R7 R11 K14 ["setPreviewAnimationParameters"]
      107 SETTABLEKS                       R10 R11 K15 ["setPreviewAnimationNodeParameterAsync"]
      109 GETUPVAL                         R13 5
      110 GETTABLEKS                       R12 R13 K17 ["useReplicatedState"]
      112 GETUPVAL                         R14 6
      113 GETTABLEKS                       R13 R14 K18 ["ANIMATION_PARAMETERS_MAP"]
      115 MOVE                             R14 R2
      116 CALL                             R12 2 0
      117 GETUPVAL                         R13 5
      118 GETTABLEKS                       R12 R13 K17 ["useReplicatedState"]
      120 GETUPVAL                         R14 6
      121 GETTABLEKS                       R13 R14 K19 ["PREVIEW_ANIMATION_PARAMETERS_MAP"]
      123 MOVE                             R14 R6
      124 CALL                             R12 2 0
      125 GETUPVAL                         R13 5
      126 GETTABLEKS                       R12 R13 K20 ["useBoundAction"]
      128 GETUPVAL                         R14 7
      129 GETTABLEKS                       R13 R14 K21 ["SET_ANIMATION_PARAMETER"]
      131 MOVE                             R14 R4
      132 CALL                             R12 2 0
      133 GETUPVAL                         R13 5
      134 GETTABLEKS                       R12 R13 K20 ["useBoundAction"]
      136 GETUPVAL                         R14 7
      137 GETTABLEKS                       R13 R14 K22 ["SET_ANIMATION_NODE_PARAMETER"]
      139 MOVE                             R14 R8
      140 CALL                             R12 2 0
      141 GETUPVAL                         R13 5
      142 GETTABLEKS                       R12 R13 K20 ["useBoundAction"]
      144 GETUPVAL                         R14 7
      145 GETTABLEKS                       R13 R14 K23 ["RENAME_ANIMATION_PARAMETER"]
      147 MOVE                             R14 R5
      148 CALL                             R12 2 0
      149 GETUPVAL                         R13 5
      150 GETTABLEKS                       R12 R13 K20 ["useBoundAction"]
      152 GETUPVAL                         R14 7
      153 GETTABLEKS                       R13 R14 K24 ["SET_PREVIEW_ANIMATION_PARAMETERS"]
      155 MOVE                             R14 R7
      156 CALL                             R12 2 0
      157 GETUPVAL                         R13 5
      158 GETTABLEKS                       R12 R13 K20 ["useBoundAction"]
      160 GETUPVAL                         R14 7
      161 GETTABLEKS                       R13 R14 K25 ["SET_PREVIEW_ANIMATION_NODE_PARAMETER"]
      163 MOVE                             R14 R10
      164 CALL                             R12 2 0
      165 GETUPVAL                         R13 0
      166 GETTABLEKS                       R12 R13 K26 ["createElement"]
      168 GETUPVAL                         R14 8
      169 GETTABLEKS                       R13 R14 K27 ["Provider"]
      171 DUPTABLE                         R14 K29 [{"value"}]
      172 SETTABLEKS                       R11 R14 K28 ["value"]
      174 GETTABLEKS                       R15 R0 K30 ["children"]
      176 CALL                             R12 3 -1
      177 RETURN                           R12 -1

PROTO_9:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useReplicatedStateListener"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R2 R3 K1 ["ANIMATION_PARAMETERS_MAP"]
        6 NEWTABLE                         R3 0 0
        8 CALL                             R1 2 1
        9 GETUPVAL                         R3 0
       10 GETTABLEKS                       R2 R3 K0 ["useReplicatedStateListener"]
       12 GETUPVAL                         R4 1
       13 GETTABLEKS                       R3 R4 K2 ["PREVIEW_ANIMATION_PARAMETERS_MAP"]
       15 LOADNIL                          R4
       16 CALL                             R2 2 1
       17 DUPTABLE                         R3 K10 [{"animationParameters", "previewAnimationParameters", "setAnimationParameterAsync", "setAnimationNodeParameterAsync", "renameAnimationParameterAsync", "setPreviewAnimationParameters", "setPreviewAnimationNodeParameterAsync"}]
       18 SETTABLEKS                       R1 R3 K3 ["animationParameters"]
       20 SETTABLEKS                       R2 R3 K4 ["previewAnimationParameters"]
       22 GETUPVAL                         R5 0
       23 GETTABLEKS                       R4 R5 K11 ["useBoundAction"]
       25 GETUPVAL                         R6 2
       26 GETTABLEKS                       R5 R6 K12 ["SET_ANIMATION_PARAMETER"]
       28 CALL                             R4 1 1
       29 SETTABLEKS                       R4 R3 K5 ["setAnimationParameterAsync"]
       31 GETUPVAL                         R5 0
       32 GETTABLEKS                       R4 R5 K11 ["useBoundAction"]
       34 GETUPVAL                         R6 2
       35 GETTABLEKS                       R5 R6 K13 ["SET_ANIMATION_NODE_PARAMETER"]
       37 CALL                             R4 1 1
       38 SETTABLEKS                       R4 R3 K6 ["setAnimationNodeParameterAsync"]
       40 GETUPVAL                         R5 0
       41 GETTABLEKS                       R4 R5 K11 ["useBoundAction"]
       43 GETUPVAL                         R6 2
       44 GETTABLEKS                       R5 R6 K14 ["RENAME_ANIMATION_PARAMETER"]
       46 CALL                             R4 1 1
       47 SETTABLEKS                       R4 R3 K7 ["renameAnimationParameterAsync"]
       49 GETUPVAL                         R5 0
       50 GETTABLEKS                       R4 R5 K11 ["useBoundAction"]
       52 GETUPVAL                         R6 2
       53 GETTABLEKS                       R5 R6 K15 ["SET_PREVIEW_ANIMATION_PARAMETERS"]
       55 CALL                             R4 1 1
       56 SETTABLEKS                       R4 R3 K8 ["setPreviewAnimationParameters"]
       58 GETUPVAL                         R5 0
       59 GETTABLEKS                       R4 R5 K11 ["useBoundAction"]
       61 GETUPVAL                         R6 2
       62 GETTABLEKS                       R5 R6 K16 ["SET_PREVIEW_ANIMATION_NODE_PARAMETER"]
       64 CALL                             R4 1 1
       65 SETTABLEKS                       R4 R3 K9 ["setPreviewAnimationNodeParameterAsync"]
       67 GETUPVAL                         R5 3
       68 GETTABLEKS                       R4 R5 K17 ["createElement"]
       70 GETUPVAL                         R6 4
       71 GETTABLEKS                       R5 R6 K18 ["Provider"]
       73 DUPTABLE                         R6 K20 [{"value"}]
       74 SETTABLEKS                       R3 R6 K19 ["value"]
       76 GETTABLEKS                       R7 R0 K21 ["children"]
       78 CALL                             R4 3 -1
       79 RETURN                           R4 -1

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
       15 GETTABLEKS                       R4 R0 K10 ["Contexts"]
       17 GETTABLEKS                       R3 R4 K11 ["NativeGraphContext"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K9 [require]
       22 GETTABLEKS                       R6 R0 K12 ["Util"]
       24 GETTABLEKS                       R5 R6 K13 ["Networking"]
       26 GETTABLEKS                       R4 R5 K14 ["NetworkUtils"]
       28 CALL                             R3 1 1
       29 GETIMPORT                        R4 K9 [require]
       31 GETTABLEKS                       R5 R0 K15 ["NodeViewTypes"]
       33 CALL                             R4 1 1
       34 GETIMPORT                        R5 K9 [require]
       36 GETTABLEKS                       R7 R0 K16 ["Parent"]
       38 GETTABLEKS                       R6 R7 K17 ["React"]
       40 CALL                             R5 1 1
       41 GETIMPORT                        R6 K9 [require]
       43 GETTABLEKS                       R8 R0 K16 ["Parent"]
       45 GETTABLEKS                       R7 R8 K18 ["ReactUtils"]
       47 CALL                             R6 1 1
       48 GETIMPORT                        R7 K9 [require]
       50 GETTABLEKS                       R10 R0 K12 ["Util"]
       52 GETTABLEKS                       R9 R10 K19 ["Signals"]
       54 GETTABLEKS                       R8 R9 K20 ["SignalsInstanceUtils"]
       56 CALL                             R7 1 1
       57 GETIMPORT                        R8 K9 [require]
       59 GETTABLEKS                       R10 R0 K16 ["Parent"]
       61 GETTABLEKS                       R9 R10 K21 ["SignalsReact"]
       63 CALL                             R8 1 1
       64 DUPTABLE                         R9 K29 [{"animationParameters", "setAnimationParameterAsync", "setAnimationNodeParameterAsync", "renameAnimationParameterAsync", "previewAnimationParameters", "setPreviewAnimationParameters", "setPreviewAnimationNodeParameterAsync"}]
       65 NEWTABLE                         R10 0 0
       67 SETTABLEKS                       R10 R9 K22 ["animationParameters"]
       69 GETTABLEKS                       R10 R6 K30 ["createUnimplemented"]
       71 LOADK                            R11 K23 ["setAnimationParameterAsync"]
       72 CALL                             R10 1 1
       73 SETTABLEKS                       R10 R9 K23 ["setAnimationParameterAsync"]
       75 GETTABLEKS                       R10 R6 K30 ["createUnimplemented"]
       77 LOADK                            R11 K24 ["setAnimationNodeParameterAsync"]
       78 CALL                             R10 1 1
       79 SETTABLEKS                       R10 R9 K24 ["setAnimationNodeParameterAsync"]
       81 GETTABLEKS                       R10 R6 K30 ["createUnimplemented"]
       83 LOADK                            R11 K25 ["renameAnimationParameterAsync"]
       84 CALL                             R10 1 1
       85 SETTABLEKS                       R10 R9 K25 ["renameAnimationParameterAsync"]
       87 NEWTABLE                         R10 0 0
       89 SETTABLEKS                       R10 R9 K26 ["previewAnimationParameters"]
       91 GETTABLEKS                       R10 R6 K30 ["createUnimplemented"]
       93 LOADK                            R11 K27 ["setPreviewAnimationParameters"]
       94 CALL                             R10 1 1
       95 SETTABLEKS                       R10 R9 K27 ["setPreviewAnimationParameters"]
       97 GETTABLEKS                       R10 R6 K30 ["createUnimplemented"]
       99 LOADK                            R11 K28 ["setPreviewAnimationNodeParameterAsync"]
      100 CALL                             R10 1 1
      101 SETTABLEKS                       R10 R9 K28 ["setPreviewAnimationNodeParameterAsync"]
      103 GETTABLEKS                       R10 R5 K31 ["createContext"]
      105 MOVE                             R11 R9
      106 CALL                             R10 1 1
      107 DUPTABLE                         R11 K34 [{"PREVIEW_ANIMATION_PARAMETERS_MAP", "ANIMATION_PARAMETERS_MAP"}]
      108 LOADK                            R12 K35 ["AnimationParameterContext_PreviewAnimationParametersState"]
      109 SETTABLEKS                       R12 R11 K32 ["PREVIEW_ANIMATION_PARAMETERS_MAP"]
      111 LOADK                            R12 K36 ["AnimationParameterContext_AnimationParametersState"]
      112 SETTABLEKS                       R12 R11 K33 ["ANIMATION_PARAMETERS_MAP"]
      114 DUPTABLE                         R12 K42 [{"SET_ANIMATION_PARAMETER", "SET_ANIMATION_NODE_PARAMETER", "RENAME_ANIMATION_PARAMETER", "SET_PREVIEW_ANIMATION_PARAMETERS", "SET_PREVIEW_ANIMATION_NODE_PARAMETER"}]
      115 LOADK                            R13 K43 ["AnimationParameterContext_SetAnimationParameterAsync"]
      116 SETTABLEKS                       R13 R12 K37 ["SET_ANIMATION_PARAMETER"]
      118 LOADK                            R13 K44 ["AnimationParameterContext_SetAnimationNodeParameterAsync"]
      119 SETTABLEKS                       R13 R12 K38 ["SET_ANIMATION_NODE_PARAMETER"]
      121 LOADK                            R13 K45 ["AnimationParameterContext_RenameAnimationParameterAsync"]
      122 SETTABLEKS                       R13 R12 K39 ["RENAME_ANIMATION_PARAMETER"]
      124 LOADK                            R13 K46 ["AnimationParameterContext_SetPreviewAnimationParameters"]
      125 SETTABLEKS                       R13 R12 K40 ["SET_PREVIEW_ANIMATION_PARAMETERS"]
      127 LOADK                            R13 K47 ["AnimationParameterContext_SetPreviewAnimationNodeParameterAsync"]
      128 SETTABLEKS                       R13 R12 K41 ["SET_PREVIEW_ANIMATION_NODE_PARAMETER"]
      130 DUPCLOSURE                       R13 K48 [PROTO_8]
      131 CAPTURE                          VAL R5
      132 CAPTURE                          VAL R2
      133 CAPTURE                          VAL R8
      134 CAPTURE                          VAL R7
      135 CAPTURE                          VAL R1
      136 CAPTURE                          VAL R3
      137 CAPTURE                          VAL R11
      138 CAPTURE                          VAL R12
      139 CAPTURE                          VAL R10
      140 DUPCLOSURE                       R14 K49 [PROTO_9]
      141 CAPTURE                          VAL R3
      142 CAPTURE                          VAL R11
      143 CAPTURE                          VAL R12
      144 CAPTURE                          VAL R5
      145 CAPTURE                          VAL R10
      146 DUPTABLE                         R15 K53 [{"Context", "EditableDataModelProvider", "UIDataModelProvider"}]
      147 SETTABLEKS                       R10 R15 K50 ["Context"]
      149 SETTABLEKS                       R13 R15 K51 ["EditableDataModelProvider"]
      151 SETTABLEKS                       R14 R15 K52 ["UIDataModelProvider"]
      153 RETURN                           R15 1
