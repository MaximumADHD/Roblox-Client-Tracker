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
        0 GETUPVAL                         R2 0
        1 JUMPIF                           R2 ; [+1]
        2 RETURN                           R0 0
        3 GETUPVAL                         R2 0
        4 MOVE                             R4 R0
        5 NAMECALL                         R2 R2 K0 ["GetAttribute"]
        7 CALL                             R2 2 1
        8 JUMPIF                           R2 ; [+1]
        9 RETURN                           R0 0
       10 GETUPVAL                         R3 1
       11 LOADK                            R5 K1 ["AnimationParameterContext"]
       12 LOADK                            R6 K2 ["renameAnimationParameter"]
       13 NAMECALL                         R3 R3 K3 ["TryBeginRecording"]
       15 CALL                             R3 3 1
       16 GETUPVAL                         R4 0
       17 MOVE                             R6 R0
       18 LOADNIL                          R7
       19 NAMECALL                         R4 R4 K4 ["SetAttribute"]
       21 CALL                             R4 3 0
       22 GETUPVAL                         R4 0
       23 MOVE                             R6 R1
       24 MOVE                             R7 R2
       25 NAMECALL                         R4 R4 K4 ["SetAttribute"]
       27 CALL                             R4 3 0
       28 GETUPVAL                         R5 2
       29 GETTABLEKS                       R4 R5 K5 ["renameParameterAsync"]
       31 MOVE                             R5 R0
       32 MOVE                             R6 R1
       33 CALL                             R4 2 0
       34 JUMPIFNOT                        R3 ; [+7]
       35 GETUPVAL                         R4 1
       36 MOVE                             R6 R3
       37 GETIMPORT                        R7 K9 [Enum.FinishRecordingOperation.Commit]
       39 NAMECALL                         R4 R4 K10 ["FinishRecording"]
       41 CALL                             R4 3 0
       42 RETURN                           R0 0

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
       31 GETTABLEKS                       R6 R0 K15 ["Parent"]
       33 GETTABLEKS                       R5 R6 K16 ["React"]
       35 CALL                             R4 1 1
       36 GETIMPORT                        R5 K9 [require]
       38 GETTABLEKS                       R7 R0 K15 ["Parent"]
       40 GETTABLEKS                       R6 R7 K17 ["ReactUtils"]
       42 CALL                             R5 1 1
       43 GETIMPORT                        R6 K9 [require]
       45 GETTABLEKS                       R9 R0 K12 ["Util"]
       47 GETTABLEKS                       R8 R9 K18 ["Signals"]
       49 GETTABLEKS                       R7 R8 K19 ["SignalsInstanceUtils"]
       51 CALL                             R6 1 1
       52 GETIMPORT                        R7 K9 [require]
       54 GETTABLEKS                       R9 R0 K15 ["Parent"]
       56 GETTABLEKS                       R8 R9 K20 ["SignalsReact"]
       58 CALL                             R7 1 1
       59 DUPTABLE                         R8 K28 [{"animationParameters", "setAnimationParameterAsync", "setAnimationNodeParameterAsync", "renameAnimationParameterAsync", "previewAnimationParameters", "setPreviewAnimationParameters", "setPreviewAnimationNodeParameterAsync"}]
       60 NEWTABLE                         R9 0 0
       62 SETTABLEKS                       R9 R8 K21 ["animationParameters"]
       64 GETTABLEKS                       R9 R5 K29 ["createUnimplemented"]
       66 LOADK                            R10 K22 ["setAnimationParameterAsync"]
       67 CALL                             R9 1 1
       68 SETTABLEKS                       R9 R8 K22 ["setAnimationParameterAsync"]
       70 GETTABLEKS                       R9 R5 K29 ["createUnimplemented"]
       72 LOADK                            R10 K23 ["setAnimationNodeParameterAsync"]
       73 CALL                             R9 1 1
       74 SETTABLEKS                       R9 R8 K23 ["setAnimationNodeParameterAsync"]
       76 GETTABLEKS                       R9 R5 K29 ["createUnimplemented"]
       78 LOADK                            R10 K24 ["renameAnimationParameterAsync"]
       79 CALL                             R9 1 1
       80 SETTABLEKS                       R9 R8 K24 ["renameAnimationParameterAsync"]
       82 NEWTABLE                         R9 0 0
       84 SETTABLEKS                       R9 R8 K25 ["previewAnimationParameters"]
       86 GETTABLEKS                       R9 R5 K29 ["createUnimplemented"]
       88 LOADK                            R10 K26 ["setPreviewAnimationParameters"]
       89 CALL                             R9 1 1
       90 SETTABLEKS                       R9 R8 K26 ["setPreviewAnimationParameters"]
       92 GETTABLEKS                       R9 R5 K29 ["createUnimplemented"]
       94 LOADK                            R10 K27 ["setPreviewAnimationNodeParameterAsync"]
       95 CALL                             R9 1 1
       96 SETTABLEKS                       R9 R8 K27 ["setPreviewAnimationNodeParameterAsync"]
       98 GETTABLEKS                       R9 R4 K30 ["createContext"]
      100 MOVE                             R10 R8
      101 CALL                             R9 1 1
      102 DUPTABLE                         R10 K33 [{"PREVIEW_ANIMATION_PARAMETERS_MAP", "ANIMATION_PARAMETERS_MAP"}]
      103 LOADK                            R11 K34 ["AnimationParameterContext_PreviewAnimationParametersState"]
      104 SETTABLEKS                       R11 R10 K31 ["PREVIEW_ANIMATION_PARAMETERS_MAP"]
      106 LOADK                            R11 K35 ["AnimationParameterContext_AnimationParametersState"]
      107 SETTABLEKS                       R11 R10 K32 ["ANIMATION_PARAMETERS_MAP"]
      109 DUPTABLE                         R11 K41 [{"SET_ANIMATION_PARAMETER", "SET_ANIMATION_NODE_PARAMETER", "RENAME_ANIMATION_PARAMETER", "SET_PREVIEW_ANIMATION_PARAMETERS", "SET_PREVIEW_ANIMATION_NODE_PARAMETER"}]
      110 LOADK                            R12 K42 ["AnimationParameterContext_SetAnimationParameterAsync"]
      111 SETTABLEKS                       R12 R11 K36 ["SET_ANIMATION_PARAMETER"]
      113 LOADK                            R12 K43 ["AnimationParameterContext_SetAnimationNodeParameterAsync"]
      114 SETTABLEKS                       R12 R11 K37 ["SET_ANIMATION_NODE_PARAMETER"]
      116 LOADK                            R12 K44 ["AnimationParameterContext_RenameAnimationParameterAsync"]
      117 SETTABLEKS                       R12 R11 K38 ["RENAME_ANIMATION_PARAMETER"]
      119 LOADK                            R12 K45 ["AnimationParameterContext_SetPreviewAnimationParameters"]
      120 SETTABLEKS                       R12 R11 K39 ["SET_PREVIEW_ANIMATION_PARAMETERS"]
      122 LOADK                            R12 K46 ["AnimationParameterContext_SetPreviewAnimationNodeParameterAsync"]
      123 SETTABLEKS                       R12 R11 K40 ["SET_PREVIEW_ANIMATION_NODE_PARAMETER"]
      125 DUPCLOSURE                       R12 K47 [PROTO_8]
      126 CAPTURE                          VAL R4
      127 CAPTURE                          VAL R2
      128 CAPTURE                          VAL R7
      129 CAPTURE                          VAL R6
      130 CAPTURE                          VAL R1
      131 CAPTURE                          VAL R3
      132 CAPTURE                          VAL R10
      133 CAPTURE                          VAL R11
      134 CAPTURE                          VAL R9
      135 DUPCLOSURE                       R13 K48 [PROTO_9]
      136 CAPTURE                          VAL R3
      137 CAPTURE                          VAL R10
      138 CAPTURE                          VAL R11
      139 CAPTURE                          VAL R4
      140 CAPTURE                          VAL R9
      141 DUPTABLE                         R14 K52 [{"Context", "EditableDataModelProvider", "UIDataModelProvider"}]
      142 SETTABLEKS                       R9 R14 K49 ["Context"]
      144 SETTABLEKS                       R12 R14 K50 ["EditableDataModelProvider"]
      146 SETTABLEKS                       R13 R14 K51 ["UIDataModelProvider"]
      148 RETURN                           R14 1
