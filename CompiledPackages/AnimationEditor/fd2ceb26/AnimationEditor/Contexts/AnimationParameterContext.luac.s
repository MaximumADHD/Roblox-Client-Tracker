PROTO_0:
        0 JUMPIFEQKNIL                     R0 ; [+9]
        2 GETUPVAL                         R1 0
        3 CALL                             R1 0 1
        4 JUMPIFNOT                        R1 ; [+12]
        5 LOADK                            R3 K0 ["AnimationGraphDefinition"]
        6 NAMECALL                         R1 R0 K1 ["IsA"]
        8 CALL                             R1 2 1
        9 JUMPIF                           R1 ; [+7]
       10 GETUPVAL                         R1 1
       11 GETTABLEKS                       R1 R1 K2 ["of"]
       13 NEWTABLE                         R2 0 0
       15 CALL                             R1 1 -1
       16 RETURN                           R1 -1
       17 GETUPVAL                         R1 1
       18 GETTABLEKS                       R1 R1 K3 ["observeAttributes"]
       20 MOVE                             R2 R0
       21 CALL                             R1 1 -1
       22 RETURN                           R1 -1

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
       14 CAPTURE                          UPVAL U4
       15 CAPTURE                          UPVAL U0
       16 CALL                             R0 2 -1
       17 RETURN                           R0 -1

PROTO_2:
        0 GETUPVAL                         R4 0
        1 CALL                             R4 0 1
        2 JUMPIFNOT                        R4 ; [+6]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R3 R3 K0 ["observeSelectedGraphInstance"]
        6 LOADB                            R4 0
        7 CALL                             R3 1 1
        8 JUMP                             ; [+5]
        9 GETUPVAL                         R3 2
       10 GETTABLEKS                       R3 R3 K1 ["observeSelectedGraphInstance_DEPRECATED"]
       12 LOADB                            R4 0
       13 CALL                             R3 1 1
       14 JUMPIF                           R3 ; [+5]
       15 GETIMPORT                        R4 K3 [warn]
       17 LOADK                            R5 K4 ["[AnimationParameterContext] No graph selected, cannot set parameter"]
       18 CALL                             R4 1 0
       19 RETURN                           R0 0
       20 JUMPIFEQKB                       R2 FALSE ; [+8]
       22 GETUPVAL                         R4 3
       23 LOADK                            R6 K5 ["AnimationParameterContext"]
       24 LOADK                            R7 K6 ["setAnimationParameter"]
       25 NAMECALL                         R4 R4 K7 ["TryBeginRecording"]
       27 CALL                             R4 3 1
       28 JUMP                             ; [+1]
       29 LOADNIL                          R4
       30 MOVE                             R7 R0
       31 MOVE                             R8 R1
       32 NAMECALL                         R5 R3 K8 ["SetAttribute"]
       34 CALL                             R5 3 0
       35 JUMPIFNOT                        R4 ; [+7]
       36 GETUPVAL                         R5 3
       37 MOVE                             R7 R4
       38 GETIMPORT                        R8 K12 [Enum.FinishRecordingOperation.Commit]
       40 NAMECALL                         R5 R5 K13 ["FinishRecording"]
       42 CALL                             R5 3 0
       43 RETURN                           R0 0

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
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 JUMPIF                           R2 ; [+1]
        3 RETURN                           R0 0
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K0 ["setExpressionNodeValueAsync"]
        7 MOVE                             R3 R0
        8 MOVE                             R4 R1
        9 CALL                             R2 2 0
       10 RETURN                           R0 0

PROTO_6:
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

PROTO_7:
        0 DUPTABLE                         R0 K10 [{"animationParameters", "expressions", "observeAnimationParameters", "observeExpressions", "setAnimationParameterAsync", "setAnimationNodeParameterAsync", "setAnimationExpressionAsync", "previewAnimationParameters", "setPreviewAnimationParameters", "setPreviewAnimationNodeParameterAsync"}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["animationParameters"]
        4 GETUPVAL                         R1 1
        5 SETTABLEKS                       R1 R0 K1 ["expressions"]
        7 GETUPVAL                         R1 2
        8 SETTABLEKS                       R1 R0 K2 ["observeAnimationParameters"]
       10 GETUPVAL                         R1 3
       11 SETTABLEKS                       R1 R0 K3 ["observeExpressions"]
       13 GETUPVAL                         R1 4
       14 SETTABLEKS                       R1 R0 K4 ["setAnimationParameterAsync"]
       16 GETUPVAL                         R1 4
       17 SETTABLEKS                       R1 R0 K5 ["setAnimationNodeParameterAsync"]
       19 GETUPVAL                         R1 5
       20 SETTABLEKS                       R1 R0 K6 ["setAnimationExpressionAsync"]
       22 GETUPVAL                         R1 6
       23 SETTABLEKS                       R1 R0 K7 ["previewAnimationParameters"]
       25 GETUPVAL                         R1 7
       26 SETTABLEKS                       R1 R0 K8 ["setPreviewAnimationParameters"]
       28 GETUPVAL                         R1 8
       29 SETTABLEKS                       R1 R0 K9 ["setPreviewAnimationNodeParameterAsync"]
       31 RETURN                           R0 1

PROTO_8:
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
       36 CAPTURE                          UPVAL U6
       37 NEWTABLE                         R6 0 1
       39 GETUPVAL                         R8 3
       40 CALL                             R8 0 1
       41 JUMPIFNOT                        R8 ; [+3]
       42 GETTABLEKS                       R7 R3 K4 ["observeSelectedGraphInstance"]
       44 JUMP                             ; [+2]
       45 GETTABLEKS                       R7 R1 K5 ["observeSelectedGraphInstance_DEPRECATED"]
       47 SETLIST                          R6 R7 1 [1]
       49 CALL                             R4 2 1
       50 GETUPVAL                         R5 7
       51 GETTABLEKS                       R5 R5 K6 ["useSignalState"]
       53 MOVE                             R6 R4
       54 CALL                             R5 1 1
       55 GETTABLEKS                       R6 R1 K7 ["observeExpressionNodes"]
       57 GETUPVAL                         R7 7
       58 GETTABLEKS                       R7 R7 K6 ["useSignalState"]
       60 MOVE                             R8 R6
       61 CALL                             R7 1 1
       62 GETUPVAL                         R8 0
       63 GETTABLEKS                       R8 R8 K8 ["useCallback"]
       65 NEWCLOSURE                       R9 P1
       66 CAPTURE                          UPVAL U3
       67 CAPTURE                          VAL R3
       68 CAPTURE                          VAL R1
       69 CAPTURE                          UPVAL U8
       70 NEWTABLE                         R10 0 1
       72 GETUPVAL                         R12 3
       73 CALL                             R12 0 1
       74 JUMPIFNOT                        R12 ; [+3]
       75 GETTABLEKS                       R11 R3 K4 ["observeSelectedGraphInstance"]
       77 JUMP                             ; [+2]
       78 GETTABLEKS                       R11 R1 K5 ["observeSelectedGraphInstance_DEPRECATED"]
       80 SETLIST                          R10 R11 1 [1]
       82 CALL                             R8 2 1
       83 GETUPVAL                         R9 0
       84 GETTABLEKS                       R9 R9 K9 ["useState"]
       86 LOADNIL                          R10
       87 CALL                             R9 1 2
       88 GETUPVAL                         R11 0
       89 GETTABLEKS                       R11 R11 K8 ["useCallback"]
       91 NEWCLOSURE                       R12 P2
       92 CAPTURE                          VAL R10
       93 NEWTABLE                         R13 0 1
       95 MOVE                             R14 R10
       96 SETLIST                          R13 R14 1 [1]
       98 CALL                             R11 2 1
       99 GETUPVAL                         R12 0
      100 GETTABLEKS                       R12 R12 K8 ["useCallback"]
      102 NEWCLOSURE                       R13 P3
      103 CAPTURE                          UPVAL U9
      104 CAPTURE                          VAL R1
      105 NEWTABLE                         R14 0 1
      107 GETTABLEKS                       R15 R1 K10 ["setExpressionNodeValueAsync"]
      109 SETLIST                          R14 R15 1 [1]
      111 CALL                             R12 2 1
      112 GETUPVAL                         R13 0
      113 GETTABLEKS                       R13 R13 K11 ["useEffect"]
      115 NEWCLOSURE                       R14 P4
      116 CAPTURE                          VAL R2
      117 CAPTURE                          VAL R10
      118 CAPTURE                          VAL R5
      119 NEWTABLE                         R15 0 4
      121 MOVE                             R16 R5
      122 GETTABLEKS                       R17 R2 K12 ["parameterOverrides"]
      124 GETTABLEKS                       R18 R2 K13 ["numOverrides"]
      126 MOVE                             R19 R10
      127 SETLIST                          R15 R16 4 [1]
      129 CALL                             R13 2 0
      130 GETUPVAL                         R13 0
      131 GETTABLEKS                       R13 R13 K3 ["useMemo"]
      133 NEWCLOSURE                       R14 P5
      134 CAPTURE                          VAL R5
      135 CAPTURE                          VAL R7
      136 CAPTURE                          VAL R4
      137 CAPTURE                          VAL R6
      138 CAPTURE                          VAL R8
      139 CAPTURE                          VAL R12
      140 CAPTURE                          VAL R9
      141 CAPTURE                          VAL R10
      142 CAPTURE                          VAL R11
      143 NEWTABLE                         R15 0 8
      145 MOVE                             R16 R5
      146 MOVE                             R17 R7
      147 MOVE                             R18 R4
      148 MOVE                             R19 R6
      149 MOVE                             R20 R8
      150 MOVE                             R21 R9
      151 MOVE                             R22 R10
      152 MOVE                             R23 R11
      153 SETLIST                          R15 R16 8 [1]
      155 CALL                             R13 2 1
      156 GETUPVAL                         R14 10
      157 GETTABLEKS                       R14 R14 K14 ["useReplicatedState"]
      159 LOADK                            R15 K15 ["AnimationParameterContext_AnimationParametersState"]
      160 MOVE                             R16 R5
      161 CALL                             R14 2 0
      162 GETUPVAL                         R14 9
      163 CALL                             R14 0 1
      164 JUMPIFNOT                        R14 ; [+6]
      165 GETUPVAL                         R14 10
      166 GETTABLEKS                       R14 R14 K14 ["useReplicatedState"]
      168 LOADK                            R15 K16 ["AnimationParameterContext_ExpressionsState"]
      169 MOVE                             R16 R7
      170 CALL                             R14 2 0
      171 GETUPVAL                         R14 10
      172 GETTABLEKS                       R14 R14 K14 ["useReplicatedState"]
      174 LOADK                            R15 K17 ["AnimationParameterContext_PreviewAnimationParametersState"]
      175 MOVE                             R16 R9
      176 CALL                             R14 2 0
      177 GETUPVAL                         R14 10
      178 GETTABLEKS                       R14 R14 K18 ["useBoundAction"]
      180 LOADK                            R15 K19 ["AnimationParameterContext_SetAnimationParameterAsync"]
      181 MOVE                             R16 R8
      182 CALL                             R14 2 0
      183 GETUPVAL                         R14 10
      184 GETTABLEKS                       R14 R14 K18 ["useBoundAction"]
      186 LOADK                            R15 K20 ["AnimationParameterContext_SetAnimationNodeParameterAsync"]
      187 MOVE                             R16 R8
      188 CALL                             R14 2 0
      189 GETUPVAL                         R14 9
      190 CALL                             R14 0 1
      191 JUMPIFNOT                        R14 ; [+6]
      192 GETUPVAL                         R14 10
      193 GETTABLEKS                       R14 R14 K18 ["useBoundAction"]
      195 LOADK                            R15 K21 ["AnimationParameterContext_SetAnimationExpressionAsync"]
      196 MOVE                             R16 R12
      197 CALL                             R14 2 0
      198 GETUPVAL                         R14 10
      199 GETTABLEKS                       R14 R14 K18 ["useBoundAction"]
      201 LOADK                            R15 K22 ["AnimationParameterContext_SetPreviewAnimationParameters"]
      202 MOVE                             R16 R10
      203 CALL                             R14 2 0
      204 GETUPVAL                         R14 10
      205 GETTABLEKS                       R14 R14 K18 ["useBoundAction"]
      207 LOADK                            R15 K23 ["AnimationParameterContext_SetPreviewAnimationNodeParameterAsync"]
      208 MOVE                             R16 R11
      209 CALL                             R14 2 0
      210 GETUPVAL                         R14 0
      211 GETTABLEKS                       R14 R14 K24 ["createElement"]
      213 GETUPVAL                         R15 11
      214 GETTABLEKS                       R15 R15 K25 ["Provider"]
      216 DUPTABLE                         R16 K27 [{"value"}]
      217 SETTABLEKS                       R13 R16 K26 ["value"]
      219 GETTABLEKS                       R17 R0 K28 ["children"]
      221 CALL                             R14 3 -1
      222 RETURN                           R14 -1

PROTO_9:
        0 DUPTABLE                         R0 K10 [{"animationParameters", "expressions", "observeAnimationParameters", "observeExpressions", "previewAnimationParameters", "setAnimationParameterAsync", "setAnimationNodeParameterAsync", "setAnimationExpressionAsync", "setPreviewAnimationParameters", "setPreviewAnimationNodeParameterAsync"}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["animationParameters"]
        4 GETUPVAL                         R1 1
        5 SETTABLEKS                       R1 R0 K1 ["expressions"]
        7 GETUPVAL                         R1 2
        8 SETTABLEKS                       R1 R0 K2 ["observeAnimationParameters"]
       10 GETUPVAL                         R1 3
       11 SETTABLEKS                       R1 R0 K3 ["observeExpressions"]
       13 GETUPVAL                         R1 4
       14 SETTABLEKS                       R1 R0 K4 ["previewAnimationParameters"]
       16 GETUPVAL                         R1 5
       17 SETTABLEKS                       R1 R0 K5 ["setAnimationParameterAsync"]
       19 GETUPVAL                         R1 6
       20 SETTABLEKS                       R1 R0 K6 ["setAnimationNodeParameterAsync"]
       22 GETUPVAL                         R1 7
       23 SETTABLEKS                       R1 R0 K7 ["setAnimationExpressionAsync"]
       25 GETUPVAL                         R1 8
       26 SETTABLEKS                       R1 R0 K8 ["setPreviewAnimationParameters"]
       28 GETUPVAL                         R1 9
       29 SETTABLEKS                       R1 R0 K9 ["setPreviewAnimationNodeParameterAsync"]
       31 RETURN                           R0 1

PROTO_10:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useReplicatedStateListener"]
        3 LOADK                            R2 K1 ["AnimationParameterContext_AnimationParametersState"]
        4 NEWTABLE                         R3 0 0
        6 CALL                             R1 2 1
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K0 ["useReplicatedStateListener"]
       10 LOADK                            R3 K2 ["AnimationParameterContext_ExpressionsState"]
       11 NEWTABLE                         R4 0 0
       13 CALL                             R2 2 1
       14 GETUPVAL                         R3 0
       15 GETTABLEKS                       R3 R3 K0 ["useReplicatedStateListener"]
       17 LOADK                            R4 K3 ["AnimationParameterContext_PreviewAnimationParametersState"]
       18 LOADNIL                          R5
       19 CALL                             R3 2 1
       20 GETUPVAL                         R4 1
       21 MOVE                             R5 R1
       22 CALL                             R4 1 1
       23 GETUPVAL                         R5 1
       24 MOVE                             R6 R2
       25 CALL                             R5 1 1
       26 GETUPVAL                         R6 0
       27 GETTABLEKS                       R6 R6 K4 ["useBoundAction"]
       29 LOADK                            R7 K5 ["AnimationParameterContext_SetAnimationParameterAsync"]
       30 CALL                             R6 1 1
       31 GETUPVAL                         R7 0
       32 GETTABLEKS                       R7 R7 K4 ["useBoundAction"]
       34 LOADK                            R8 K6 ["AnimationParameterContext_SetAnimationNodeParameterAsync"]
       35 CALL                             R7 1 1
       36 GETUPVAL                         R8 0
       37 GETTABLEKS                       R8 R8 K4 ["useBoundAction"]
       39 LOADK                            R9 K7 ["AnimationParameterContext_SetAnimationExpressionAsync"]
       40 CALL                             R8 1 1
       41 GETUPVAL                         R9 0
       42 GETTABLEKS                       R9 R9 K4 ["useBoundAction"]
       44 LOADK                            R10 K8 ["AnimationParameterContext_SetPreviewAnimationParameters"]
       45 CALL                             R9 1 1
       46 GETUPVAL                         R10 0
       47 GETTABLEKS                       R10 R10 K4 ["useBoundAction"]
       49 LOADK                            R11 K9 ["AnimationParameterContext_SetPreviewAnimationNodeParameterAsync"]
       50 CALL                             R10 1 1
       51 GETUPVAL                         R11 2
       52 GETTABLEKS                       R11 R11 K10 ["useMemo"]
       54 NEWCLOSURE                       R12 P0
       55 CAPTURE                          VAL R1
       56 CAPTURE                          VAL R2
       57 CAPTURE                          VAL R4
       58 CAPTURE                          VAL R5
       59 CAPTURE                          VAL R3
       60 CAPTURE                          VAL R6
       61 CAPTURE                          VAL R7
       62 CAPTURE                          VAL R8
       63 CAPTURE                          VAL R9
       64 CAPTURE                          VAL R10
       65 NEWTABLE                         R13 0 9
       67 MOVE                             R14 R1
       68 MOVE                             R15 R2
       69 MOVE                             R16 R4
       70 MOVE                             R17 R5
       71 MOVE                             R18 R3
       72 MOVE                             R19 R6
       73 MOVE                             R20 R7
       74 MOVE                             R21 R9
       75 MOVE                             R22 R10
       76 SETLIST                          R13 R14 9 [1]
       78 CALL                             R11 2 1
       79 GETUPVAL                         R12 2
       80 GETTABLEKS                       R12 R12 K11 ["createElement"]
       82 GETUPVAL                         R13 3
       83 GETTABLEKS                       R13 R13 K12 ["Provider"]
       85 DUPTABLE                         R14 K14 [{"value"}]
       86 SETTABLEKS                       R11 R14 K13 ["value"]
       88 GETTABLEKS                       R15 R0 K15 ["children"]
       90 CALL                             R12 3 -1
       91 RETURN                           R12 -1

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
       84 GETTABLEKS                       R12 R12 K24 ["getFFlagAnimGraphUIEnableExpressionNodes"]
       86 CALL                             R11 1 1
       87 GETIMPORT                        R12 K9 [require]
       89 GETTABLEKS                       R13 R0 K23 ["Flags"]
       91 GETTABLEKS                       R13 R13 K25 ["getFFlagAnimGraphUI_RunTimeDebug"]
       93 CALL                             R12 1 1
       94 GETIMPORT                        R13 K9 [require]
       96 GETTABLEKS                       R14 R0 K23 ["Flags"]
       98 GETTABLEKS                       R14 R14 K26 ["getFFlagAnimationEditorAnimationTypes"]
      100 CALL                             R13 1 1
      101 GETIMPORT                        R14 K9 [require]
      103 GETTABLEKS                       R15 R0 K27 ["Hooks"]
      105 GETTABLEKS                       R15 R15 K28 ["useStateToSignal"]
      107 CALL                             R14 1 1
      108 DUPTABLE                         R15 K39 [{"animationParameters", "expressions", "observeAnimationParameters", "observeExpressions", "setAnimationParameterAsync", "setAnimationNodeParameterAsync", "setAnimationExpressionAsync", "previewAnimationParameters", "setPreviewAnimationParameters", "setPreviewAnimationNodeParameterAsync"}]
      109 NEWTABLE                         R16 0 0
      111 SETTABLEKS                       R16 R15 K29 ["animationParameters"]
      113 NEWTABLE                         R16 0 0
      115 SETTABLEKS                       R16 R15 K30 ["expressions"]
      117 GETTABLEKS                       R16 R9 K40 ["of"]
      119 NEWTABLE                         R17 0 0
      121 CALL                             R16 1 1
      122 SETTABLEKS                       R16 R15 K31 ["observeAnimationParameters"]
      124 GETTABLEKS                       R16 R9 K40 ["of"]
      126 NEWTABLE                         R17 0 0
      128 CALL                             R16 1 1
      129 SETTABLEKS                       R16 R15 K32 ["observeExpressions"]
      131 GETTABLEKS                       R16 R6 K41 ["createUnimplemented"]
      133 LOADK                            R17 K33 ["setAnimationParameterAsync"]
      134 CALL                             R16 1 1
      135 SETTABLEKS                       R16 R15 K33 ["setAnimationParameterAsync"]
      137 GETTABLEKS                       R16 R6 K41 ["createUnimplemented"]
      139 LOADK                            R17 K34 ["setAnimationNodeParameterAsync"]
      140 CALL                             R16 1 1
      141 SETTABLEKS                       R16 R15 K34 ["setAnimationNodeParameterAsync"]
      143 GETTABLEKS                       R16 R6 K41 ["createUnimplemented"]
      145 LOADK                            R17 K35 ["setAnimationExpressionAsync"]
      146 CALL                             R16 1 1
      147 SETTABLEKS                       R16 R15 K35 ["setAnimationExpressionAsync"]
      149 NEWTABLE                         R16 0 0
      151 SETTABLEKS                       R16 R15 K36 ["previewAnimationParameters"]
      153 GETTABLEKS                       R16 R6 K41 ["createUnimplemented"]
      155 LOADK                            R17 K37 ["setPreviewAnimationParameters"]
      156 CALL                             R16 1 1
      157 SETTABLEKS                       R16 R15 K37 ["setPreviewAnimationParameters"]
      159 GETTABLEKS                       R16 R6 K41 ["createUnimplemented"]
      161 LOADK                            R17 K38 ["setPreviewAnimationNodeParameterAsync"]
      162 CALL                             R16 1 1
      163 SETTABLEKS                       R16 R15 K38 ["setPreviewAnimationNodeParameterAsync"]
      165 GETTABLEKS                       R16 R5 K42 ["createContext"]
      167 MOVE                             R17 R15
      168 CALL                             R16 1 1
      169 DUPTABLE                         R17 K49 [{["PREVIEW_ANIMATION_PARAMETERS_MAP"] = "AnimationParameterContext_PreviewAnimationParametersState", ["ANIMATION_PARAMETERS_MAP"] = "AnimationParameterContext_AnimationParametersState", ["EXPRESSIONS_MAP"] = "AnimationParameterContext_ExpressionsState"}]
      170 DUPTABLE                         R18 K60 [{["SET_ANIMATION_PARAMETER"] = "AnimationParameterContext_SetAnimationParameterAsync", ["SET_ANIMATION_NODE_PARAMETER"] = "AnimationParameterContext_SetAnimationNodeParameterAsync", ["SET_ANIMATION_EXPRESSION"] = "AnimationParameterContext_SetAnimationExpressionAsync", ["SET_PREVIEW_ANIMATION_PARAMETERS"] = "AnimationParameterContext_SetPreviewAnimationParameters", ["SET_PREVIEW_ANIMATION_NODE_PARAMETER"] = "AnimationParameterContext_SetPreviewAnimationNodeParameterAsync"}]
      171 DUPCLOSURE                       R19 K61 [PROTO_8]
      172 CAPTURE                          VAL R5
      173 CAPTURE                          VAL R2
      174 CAPTURE                          VAL R4
      175 CAPTURE                          VAL R12
      176 CAPTURE                          VAL R7
      177 CAPTURE                          VAL R9
      178 CAPTURE                          VAL R13
      179 CAPTURE                          VAL R10
      180 CAPTURE                          VAL R1
      181 CAPTURE                          VAL R11
      182 CAPTURE                          VAL R3
      183 CAPTURE                          VAL R16
      184 DUPCLOSURE                       R20 K62 [PROTO_10]
      185 CAPTURE                          VAL R3
      186 CAPTURE                          VAL R14
      187 CAPTURE                          VAL R5
      188 CAPTURE                          VAL R16
      189 DUPTABLE                         R21 K66 [{"Context", "EditableDataModelProvider", "UIDataModelProvider"}]
      190 SETTABLEKS                       R16 R21 K63 ["Context"]
      192 SETTABLEKS                       R19 R21 K64 ["EditableDataModelProvider"]
      194 SETTABLEKS                       R20 R21 K65 ["UIDataModelProvider"]
      196 RETURN                           R21 1
