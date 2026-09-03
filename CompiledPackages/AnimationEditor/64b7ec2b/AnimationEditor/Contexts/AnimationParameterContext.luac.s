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
        0 GETUPVAL                         R3 0
        1 CALL                             R3 0 1
        2 JUMPIF                           R3 ; [+1]
        3 RETURN                           R0 0
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R3 R3 K0 ["setExpressionNodeValueAsync"]
        7 MOVE                             R4 R0
        8 MOVE                             R5 R1
        9 MOVE                             R6 R2
       10 CALL                             R3 3 0
       11 RETURN                           R0 0

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
        0 DUPTABLE                         R0 K10 [{"animationParameters", "nonPromotedExpressions", "observeAnimationParameters", "observeNonPromotedExpressions", "setAnimationParameterAsync", "setAnimationNodeParameterAsync", "setAnimationExpressionAsync", "previewAnimationParameters", "setPreviewAnimationParameters", "setPreviewAnimationNodeParameterAsync"}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["animationParameters"]
        4 GETUPVAL                         R1 1
        5 SETTABLEKS                       R1 R0 K1 ["nonPromotedExpressions"]
        7 GETUPVAL                         R1 2
        8 SETTABLEKS                       R1 R0 K2 ["observeAnimationParameters"]
       10 GETUPVAL                         R1 3
       11 SETTABLEKS                       R1 R0 K3 ["observeNonPromotedExpressions"]
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
       54 GETTABLEKS                       R6 R1 K7 ["observeNonPromotedExpressionNodes"]
       56 GETUPVAL                         R7 6
       57 GETTABLEKS                       R7 R7 K6 ["useSignalState"]
       59 MOVE                             R8 R6
       60 CALL                             R7 1 1
       61 GETUPVAL                         R8 0
       62 GETTABLEKS                       R8 R8 K8 ["useCallback"]
       64 NEWCLOSURE                       R9 P1
       65 CAPTURE                          UPVAL U3
       66 CAPTURE                          VAL R3
       67 CAPTURE                          VAL R1
       68 CAPTURE                          UPVAL U7
       69 NEWTABLE                         R10 0 1
       71 GETUPVAL                         R12 3
       72 CALL                             R12 0 1
       73 JUMPIFNOT                        R12 ; [+3]
       74 GETTABLEKS                       R11 R3 K4 ["observeSelectedGraphInstance"]
       76 JUMP                             ; [+2]
       77 GETTABLEKS                       R11 R1 K5 ["observeSelectedGraphInstance_DEPRECATED"]
       79 SETLIST                          R10 R11 1 [1]
       81 CALL                             R8 2 1
       82 GETUPVAL                         R9 0
       83 GETTABLEKS                       R9 R9 K9 ["useState"]
       85 LOADNIL                          R10
       86 CALL                             R9 1 2
       87 GETUPVAL                         R11 0
       88 GETTABLEKS                       R11 R11 K8 ["useCallback"]
       90 NEWCLOSURE                       R12 P2
       91 CAPTURE                          VAL R10
       92 NEWTABLE                         R13 0 1
       94 MOVE                             R14 R10
       95 SETLIST                          R13 R14 1 [1]
       97 CALL                             R11 2 1
       98 GETUPVAL                         R12 0
       99 GETTABLEKS                       R12 R12 K8 ["useCallback"]
      101 NEWCLOSURE                       R13 P3
      102 CAPTURE                          UPVAL U8
      103 CAPTURE                          VAL R1
      104 NEWTABLE                         R14 0 1
      106 GETTABLEKS                       R15 R1 K10 ["setExpressionNodeValueAsync"]
      108 SETLIST                          R14 R15 1 [1]
      110 CALL                             R12 2 1
      111 GETUPVAL                         R13 0
      112 GETTABLEKS                       R13 R13 K11 ["useEffect"]
      114 NEWCLOSURE                       R14 P4
      115 CAPTURE                          VAL R2
      116 CAPTURE                          VAL R10
      117 CAPTURE                          VAL R5
      118 NEWTABLE                         R15 0 4
      120 MOVE                             R16 R5
      121 GETTABLEKS                       R17 R2 K12 ["parameterOverrides"]
      123 GETTABLEKS                       R18 R2 K13 ["numOverrides"]
      125 MOVE                             R19 R10
      126 SETLIST                          R15 R16 4 [1]
      128 CALL                             R13 2 0
      129 GETUPVAL                         R13 0
      130 GETTABLEKS                       R13 R13 K3 ["useMemo"]
      132 NEWCLOSURE                       R14 P5
      133 CAPTURE                          VAL R5
      134 CAPTURE                          VAL R7
      135 CAPTURE                          VAL R4
      136 CAPTURE                          VAL R6
      137 CAPTURE                          VAL R8
      138 CAPTURE                          VAL R12
      139 CAPTURE                          VAL R9
      140 CAPTURE                          VAL R10
      141 CAPTURE                          VAL R11
      142 NEWTABLE                         R15 0 8
      144 MOVE                             R16 R5
      145 MOVE                             R17 R7
      146 MOVE                             R18 R4
      147 MOVE                             R19 R6
      148 MOVE                             R20 R8
      149 MOVE                             R21 R9
      150 MOVE                             R22 R10
      151 MOVE                             R23 R11
      152 SETLIST                          R15 R16 8 [1]
      154 CALL                             R13 2 1
      155 GETUPVAL                         R14 9
      156 GETTABLEKS                       R14 R14 K14 ["useReplicatedState"]
      158 LOADK                            R15 K15 ["AnimationParameterContext_AnimationParametersState"]
      159 MOVE                             R16 R5
      160 CALL                             R14 2 0
      161 GETUPVAL                         R14 8
      162 CALL                             R14 0 1
      163 JUMPIFNOT                        R14 ; [+6]
      164 GETUPVAL                         R14 9
      165 GETTABLEKS                       R14 R14 K14 ["useReplicatedState"]
      167 LOADK                            R15 K16 ["AnimationParameterContext_NonPromotedExpressionsState"]
      168 MOVE                             R16 R7
      169 CALL                             R14 2 0
      170 GETUPVAL                         R14 9
      171 GETTABLEKS                       R14 R14 K14 ["useReplicatedState"]
      173 LOADK                            R15 K17 ["AnimationParameterContext_PreviewAnimationParametersState"]
      174 MOVE                             R16 R9
      175 CALL                             R14 2 0
      176 GETUPVAL                         R14 9
      177 GETTABLEKS                       R14 R14 K18 ["useBoundAction"]
      179 LOADK                            R15 K19 ["AnimationParameterContext_SetAnimationParameterAsync"]
      180 MOVE                             R16 R8
      181 CALL                             R14 2 0
      182 GETUPVAL                         R14 9
      183 GETTABLEKS                       R14 R14 K18 ["useBoundAction"]
      185 LOADK                            R15 K20 ["AnimationParameterContext_SetAnimationNodeParameterAsync"]
      186 MOVE                             R16 R8
      187 CALL                             R14 2 0
      188 GETUPVAL                         R14 8
      189 CALL                             R14 0 1
      190 JUMPIFNOT                        R14 ; [+6]
      191 GETUPVAL                         R14 9
      192 GETTABLEKS                       R14 R14 K18 ["useBoundAction"]
      194 LOADK                            R15 K21 ["AnimationParameterContext_SetAnimationExpressionAsync"]
      195 MOVE                             R16 R12
      196 CALL                             R14 2 0
      197 GETUPVAL                         R14 9
      198 GETTABLEKS                       R14 R14 K18 ["useBoundAction"]
      200 LOADK                            R15 K22 ["AnimationParameterContext_SetPreviewAnimationParameters"]
      201 MOVE                             R16 R10
      202 CALL                             R14 2 0
      203 GETUPVAL                         R14 9
      204 GETTABLEKS                       R14 R14 K18 ["useBoundAction"]
      206 LOADK                            R15 K23 ["AnimationParameterContext_SetPreviewAnimationNodeParameterAsync"]
      207 MOVE                             R16 R11
      208 CALL                             R14 2 0
      209 GETUPVAL                         R14 0
      210 GETTABLEKS                       R14 R14 K24 ["createElement"]
      212 GETUPVAL                         R15 10
      213 GETTABLEKS                       R15 R15 K25 ["Provider"]
      215 DUPTABLE                         R16 K27 [{"value"}]
      216 SETTABLEKS                       R13 R16 K26 ["value"]
      218 GETTABLEKS                       R17 R0 K28 ["children"]
      220 CALL                             R14 3 -1
      221 RETURN                           R14 -1

PROTO_9:
        0 DUPTABLE                         R0 K10 [{"animationParameters", "nonPromotedExpressions", "observeAnimationParameters", "observeNonPromotedExpressions", "previewAnimationParameters", "setAnimationParameterAsync", "setAnimationNodeParameterAsync", "setAnimationExpressionAsync", "setPreviewAnimationParameters", "setPreviewAnimationNodeParameterAsync"}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["animationParameters"]
        4 GETUPVAL                         R1 1
        5 SETTABLEKS                       R1 R0 K1 ["nonPromotedExpressions"]
        7 GETUPVAL                         R1 2
        8 SETTABLEKS                       R1 R0 K2 ["observeAnimationParameters"]
       10 GETUPVAL                         R1 3
       11 SETTABLEKS                       R1 R0 K3 ["observeNonPromotedExpressions"]
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
       10 LOADK                            R3 K2 ["AnimationParameterContext_NonPromotedExpressionsState"]
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
       96 GETTABLEKS                       R14 R0 K26 ["Hooks"]
       98 GETTABLEKS                       R14 R14 K27 ["useStateToSignal"]
      100 CALL                             R13 1 1
      101 DUPTABLE                         R14 K38 [{"animationParameters", "nonPromotedExpressions", "observeAnimationParameters", "observeNonPromotedExpressions", "setAnimationParameterAsync", "setAnimationNodeParameterAsync", "setAnimationExpressionAsync", "previewAnimationParameters", "setPreviewAnimationParameters", "setPreviewAnimationNodeParameterAsync"}]
      102 NEWTABLE                         R15 0 0
      104 SETTABLEKS                       R15 R14 K28 ["animationParameters"]
      106 NEWTABLE                         R15 0 0
      108 SETTABLEKS                       R15 R14 K29 ["nonPromotedExpressions"]
      110 GETTABLEKS                       R15 R9 K39 ["of"]
      112 NEWTABLE                         R16 0 0
      114 CALL                             R15 1 1
      115 SETTABLEKS                       R15 R14 K30 ["observeAnimationParameters"]
      117 GETTABLEKS                       R15 R9 K39 ["of"]
      119 NEWTABLE                         R16 0 0
      121 CALL                             R15 1 1
      122 SETTABLEKS                       R15 R14 K31 ["observeNonPromotedExpressions"]
      124 GETTABLEKS                       R15 R6 K40 ["createUnimplemented"]
      126 LOADK                            R16 K32 ["setAnimationParameterAsync"]
      127 CALL                             R15 1 1
      128 SETTABLEKS                       R15 R14 K32 ["setAnimationParameterAsync"]
      130 GETTABLEKS                       R15 R6 K40 ["createUnimplemented"]
      132 LOADK                            R16 K33 ["setAnimationNodeParameterAsync"]
      133 CALL                             R15 1 1
      134 SETTABLEKS                       R15 R14 K33 ["setAnimationNodeParameterAsync"]
      136 GETTABLEKS                       R15 R6 K40 ["createUnimplemented"]
      138 LOADK                            R16 K34 ["setAnimationExpressionAsync"]
      139 CALL                             R15 1 1
      140 SETTABLEKS                       R15 R14 K34 ["setAnimationExpressionAsync"]
      142 NEWTABLE                         R15 0 0
      144 SETTABLEKS                       R15 R14 K35 ["previewAnimationParameters"]
      146 GETTABLEKS                       R15 R6 K40 ["createUnimplemented"]
      148 LOADK                            R16 K36 ["setPreviewAnimationParameters"]
      149 CALL                             R15 1 1
      150 SETTABLEKS                       R15 R14 K36 ["setPreviewAnimationParameters"]
      152 GETTABLEKS                       R15 R6 K40 ["createUnimplemented"]
      154 LOADK                            R16 K37 ["setPreviewAnimationNodeParameterAsync"]
      155 CALL                             R15 1 1
      156 SETTABLEKS                       R15 R14 K37 ["setPreviewAnimationNodeParameterAsync"]
      158 GETTABLEKS                       R15 R5 K41 ["createContext"]
      160 MOVE                             R16 R14
      161 CALL                             R15 1 1
      162 DUPTABLE                         R16 K48 [{["PREVIEW_ANIMATION_PARAMETERS_MAP"] = "AnimationParameterContext_PreviewAnimationParametersState", ["ANIMATION_PARAMETERS_MAP"] = "AnimationParameterContext_AnimationParametersState", ["NON_PROMOTED_EXPRESSIONS_MAP"] = "AnimationParameterContext_NonPromotedExpressionsState"}]
      163 DUPTABLE                         R17 K59 [{["SET_ANIMATION_PARAMETER"] = "AnimationParameterContext_SetAnimationParameterAsync", ["SET_ANIMATION_NODE_PARAMETER"] = "AnimationParameterContext_SetAnimationNodeParameterAsync", ["SET_ANIMATION_EXPRESSION"] = "AnimationParameterContext_SetAnimationExpressionAsync", ["SET_PREVIEW_ANIMATION_PARAMETERS"] = "AnimationParameterContext_SetPreviewAnimationParameters", ["SET_PREVIEW_ANIMATION_NODE_PARAMETER"] = "AnimationParameterContext_SetPreviewAnimationNodeParameterAsync"}]
      164 DUPCLOSURE                       R18 K60 [PROTO_8]
      165 CAPTURE                          VAL R5
      166 CAPTURE                          VAL R2
      167 CAPTURE                          VAL R4
      168 CAPTURE                          VAL R12
      169 CAPTURE                          VAL R7
      170 CAPTURE                          VAL R9
      171 CAPTURE                          VAL R10
      172 CAPTURE                          VAL R1
      173 CAPTURE                          VAL R11
      174 CAPTURE                          VAL R3
      175 CAPTURE                          VAL R15
      176 DUPCLOSURE                       R19 K61 [PROTO_10]
      177 CAPTURE                          VAL R3
      178 CAPTURE                          VAL R13
      179 CAPTURE                          VAL R5
      180 CAPTURE                          VAL R15
      181 DUPTABLE                         R20 K65 [{"Context", "EditableDataModelProvider", "UIDataModelProvider"}]
      182 SETTABLEKS                       R15 R20 K62 ["Context"]
      184 SETTABLEKS                       R18 R20 K63 ["EditableDataModelProvider"]
      186 SETTABLEKS                       R19 R20 K64 ["UIDataModelProvider"]
      188 RETURN                           R20 1
