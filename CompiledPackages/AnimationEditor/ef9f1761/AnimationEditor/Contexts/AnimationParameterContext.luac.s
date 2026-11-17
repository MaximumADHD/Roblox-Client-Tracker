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
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["observeSelectedGraphInstance"]
        6 DUPCLOSURE                       R2 K2 [PROTO_0]
        7 CAPTURE                          UPVAL U2
        8 CAPTURE                          UPVAL U0
        9 CALL                             R0 2 -1
       10 RETURN                           R0 -1

PROTO_2:
        0 JUMPIFEQKNIL                     R0 ; [+6]
        2 LOADK                            R3 K0 ["AnimationGraphDefinition"]
        3 NAMECALL                         R1 R0 K1 ["IsA"]
        5 CALL                             R1 2 1
        6 JUMPIF                           R1 ; [+7]
        7 GETUPVAL                         R1 0
        8 GETTABLEKS                       R1 R1 K2 ["of"]
       10 NEWTABLE                         R2 0 0
       12 CALL                             R1 1 -1
       13 RETURN                           R1 -1
       14 GETUPVAL                         R1 1
       15 GETTABLEKS                       R1 R1 K3 ["observeParameterDefinitions"]
       17 MOVE                             R2 R0
       18 CALL                             R1 1 -1
       19 RETURN                           R1 -1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIF                           R0 ; [+7]
        3 GETUPVAL                         R0 1
        4 GETTABLEKS                       R0 R0 K0 ["of"]
        6 NEWTABLE                         R1 0 0
        8 CALL                             R0 1 -1
        9 RETURN                           R0 -1
       10 GETUPVAL                         R0 1
       11 GETTABLEKS                       R0 R0 K1 ["switchMap"]
       13 GETUPVAL                         R1 2
       14 GETTABLEKS                       R1 R1 K2 ["observeSelectedGraphInstance"]
       16 DUPCLOSURE                       R2 K3 [PROTO_2]
       17 CAPTURE                          UPVAL U1
       18 CAPTURE                          UPVAL U3
       19 CALL                             R0 2 -1
       20 RETURN                           R0 -1

PROTO_4:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["observeSelectedGraphInstance"]
        3 LOADB                            R4 0
        4 CALL                             R3 1 1
        5 JUMPIF                           R3 ; [+5]
        6 GETIMPORT                        R4 K2 [warn]
        8 LOADK                            R5 K3 ["[AnimationParameterContext] No graph selected, cannot set parameter"]
        9 CALL                             R4 1 0
       10 RETURN                           R0 0
       11 JUMPIFEQKB                       R2 FALSE ; [+8]
       13 GETUPVAL                         R4 1
       14 LOADK                            R6 K4 ["AnimationParameterContext"]
       15 LOADK                            R7 K5 ["setAnimationParameter"]
       16 NAMECALL                         R4 R4 K6 ["TryBeginRecording"]
       18 CALL                             R4 3 1
       19 JUMP                             ; [+1]
       20 LOADNIL                          R4
       21 MOVE                             R7 R0
       22 MOVE                             R8 R1
       23 NAMECALL                         R5 R3 K7 ["SetAttribute"]
       25 CALL                             R5 3 0
       26 GETUPVAL                         R5 2
       27 CALL                             R5 0 1
       28 JUMPIFNOT                        R5 ; [+6]
       29 JUMPIFNOT                        R4 ; [+5]
       30 GETUPVAL                         R5 3
       31 GETTABLEKS                       R5 R5 K8 ["markDirty"]
       33 MOVE                             R6 R3
       34 CALL                             R5 1 0
       35 JUMPIFNOT                        R4 ; [+7]
       36 GETUPVAL                         R5 1
       37 MOVE                             R7 R4
       38 GETIMPORT                        R8 K12 [Enum.FinishRecordingOperation.Commit]
       40 NAMECALL                         R5 R5 K13 ["FinishRecording"]
       42 CALL                             R5 3 0
       43 RETURN                           R0 0

PROTO_5:
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

PROTO_6:
        0 GETUPVAL                         R2 0
        1 NEWCLOSURE                       R3 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          VAL R1
        4 CALL                             R2 1 0
        5 RETURN                           R0 0

PROTO_7:
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

PROTO_8:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+1]
        3 RETURN                           R0 0
        4 GETUPVAL                         R0 1
        5 GETTABLEKS                       R0 R0 K0 ["numOverrides"]
        7 JUMPIFNOTEQKN                    R0 K1 [0] ; [+5]
        9 GETUPVAL                         R0 2
       10 LOADNIL                          R1
       11 CALL                             R0 1 0
       12 RETURN                           R0 0
       13 GETIMPORT                        R0 K4 [table.clone]
       15 GETUPVAL                         R1 3
       16 CALL                             R0 1 1
       17 GETUPVAL                         R1 1
       18 GETTABLEKS                       R1 R1 K5 ["parameterOverrides"]
       20 LOADNIL                          R2
       21 LOADNIL                          R3
       22 FORGPREP                         R1
       23 FASTCALL1                        TONUMBER R5 ; [+3]
       24 MOVE                             R8 R5
       25 GETIMPORT                        R7 K7 [tonumber]
       27 CALL                             R7 1 1
       28 OR                               R6 R7 R5
       29 SETTABLE                         R6 R0 R4
       30 FORGLOOP                         R1 2 ; [-8]
       32 GETUPVAL                         R1 2
       33 MOVE                             R2 R0
       34 CALL                             R1 1 0
       35 RETURN                           R0 0

PROTO_9:
        0 DUPTABLE                         R0 K11 [{"animationParameters", "expressions", "observeAnimationParameters", "observeExpressions", "observeParameterDefinitions", "setAnimationParameterAsync", "setAnimationNodeParameterAsync", "setAnimationExpressionAsync", "previewAnimationParameters", "setPreviewAnimationParameters", "setPreviewAnimationNodeParameterAsync"}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["animationParameters"]
        4 GETUPVAL                         R1 1
        5 SETTABLEKS                       R1 R0 K1 ["expressions"]
        7 GETUPVAL                         R1 2
        8 SETTABLEKS                       R1 R0 K2 ["observeAnimationParameters"]
       10 GETUPVAL                         R1 3
       11 SETTABLEKS                       R1 R0 K3 ["observeExpressions"]
       13 GETUPVAL                         R1 4
       14 SETTABLEKS                       R1 R0 K4 ["observeParameterDefinitions"]
       16 GETUPVAL                         R1 5
       17 SETTABLEKS                       R1 R0 K5 ["setAnimationParameterAsync"]
       19 GETUPVAL                         R1 5
       20 SETTABLEKS                       R1 R0 K6 ["setAnimationNodeParameterAsync"]
       22 GETUPVAL                         R1 6
       23 SETTABLEKS                       R1 R0 K7 ["setAnimationExpressionAsync"]
       25 GETUPVAL                         R1 7
       26 SETTABLEKS                       R1 R0 K8 ["previewAnimationParameters"]
       28 GETUPVAL                         R1 8
       29 SETTABLEKS                       R1 R0 K9 ["setPreviewAnimationParameters"]
       31 GETUPVAL                         R1 9
       32 SETTABLEKS                       R1 R0 K10 ["setPreviewAnimationNodeParameterAsync"]
       34 RETURN                           R0 1

PROTO_10:
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
       16 GETUPVAL                         R3 0
       17 GETTABLEKS                       R3 R3 K0 ["useContext"]
       19 GETUPVAL                         R4 3
       20 GETTABLEKS                       R4 R4 K1 ["Context"]
       22 CALL                             R3 1 1
       23 GETUPVAL                         R4 0
       24 GETTABLEKS                       R4 R4 K3 ["useMemo"]
       26 NEWCLOSURE                       R5 P0
       27 CAPTURE                          UPVAL U4
       28 CAPTURE                          VAL R3
       29 CAPTURE                          UPVAL U5
       30 NEWTABLE                         R6 0 1
       32 GETTABLEKS                       R7 R3 K4 ["observeSelectedGraphInstance"]
       34 SETLIST                          R6 R7 1 [1]
       36 CALL                             R4 2 1
       37 GETUPVAL                         R5 6
       38 GETTABLEKS                       R5 R5 K5 ["useSignalState"]
       40 MOVE                             R6 R4
       41 CALL                             R5 1 1
       42 GETUPVAL                         R6 0
       43 GETTABLEKS                       R6 R6 K3 ["useMemo"]
       45 NEWCLOSURE                       R7 P1
       46 CAPTURE                          UPVAL U7
       47 CAPTURE                          UPVAL U4
       48 CAPTURE                          VAL R3
       49 CAPTURE                          UPVAL U8
       50 NEWTABLE                         R8 0 1
       52 GETTABLEKS                       R9 R3 K4 ["observeSelectedGraphInstance"]
       54 SETLIST                          R8 R9 1 [1]
       56 CALL                             R6 2 1
       57 GETUPVAL                         R7 6
       58 GETTABLEKS                       R7 R7 K5 ["useSignalState"]
       60 MOVE                             R8 R6
       61 CALL                             R7 1 1
       62 GETTABLEKS                       R8 R1 K6 ["observeExpressionNodes"]
       64 GETUPVAL                         R9 6
       65 GETTABLEKS                       R9 R9 K5 ["useSignalState"]
       67 MOVE                             R10 R8
       68 CALL                             R9 1 1
       69 GETUPVAL                         R10 0
       70 GETTABLEKS                       R10 R10 K7 ["useCallback"]
       72 NEWCLOSURE                       R11 P2
       73 CAPTURE                          VAL R3
       74 CAPTURE                          UPVAL U9
       75 CAPTURE                          UPVAL U10
       76 CAPTURE                          UPVAL U11
       77 NEWTABLE                         R12 0 1
       79 GETTABLEKS                       R13 R3 K4 ["observeSelectedGraphInstance"]
       81 SETLIST                          R12 R13 1 [1]
       83 CALL                             R10 2 1
       84 GETUPVAL                         R11 0
       85 GETTABLEKS                       R11 R11 K8 ["useState"]
       87 LOADNIL                          R12
       88 CALL                             R11 1 2
       89 GETUPVAL                         R13 0
       90 GETTABLEKS                       R13 R13 K7 ["useCallback"]
       92 NEWCLOSURE                       R14 P3
       93 CAPTURE                          VAL R12
       94 NEWTABLE                         R15 0 1
       96 MOVE                             R16 R12
       97 SETLIST                          R15 R16 1 [1]
       99 CALL                             R13 2 1
      100 GETUPVAL                         R14 0
      101 GETTABLEKS                       R14 R14 K7 ["useCallback"]
      103 NEWCLOSURE                       R15 P4
      104 CAPTURE                          UPVAL U12
      105 CAPTURE                          VAL R1
      106 NEWTABLE                         R16 0 1
      108 GETTABLEKS                       R17 R1 K9 ["setExpressionNodeValueAsync"]
      110 SETLIST                          R16 R17 1 [1]
      112 CALL                             R14 2 1
      113 GETUPVAL                         R15 0
      114 GETTABLEKS                       R15 R15 K10 ["useEffect"]
      116 NEWCLOSURE                       R16 P5
      117 CAPTURE                          UPVAL U13
      118 CAPTURE                          VAL R2
      119 CAPTURE                          VAL R12
      120 CAPTURE                          VAL R5
      121 NEWTABLE                         R17 0 4
      123 MOVE                             R18 R5
      124 GETTABLEKS                       R19 R2 K11 ["parameterOverrides"]
      126 GETTABLEKS                       R20 R2 K12 ["numOverrides"]
      128 MOVE                             R21 R12
      129 SETLIST                          R17 R18 4 [1]
      131 CALL                             R15 2 0
      132 GETUPVAL                         R15 0
      133 GETTABLEKS                       R15 R15 K3 ["useMemo"]
      135 NEWCLOSURE                       R16 P6
      136 CAPTURE                          VAL R5
      137 CAPTURE                          VAL R9
      138 CAPTURE                          VAL R4
      139 CAPTURE                          VAL R8
      140 CAPTURE                          VAL R6
      141 CAPTURE                          VAL R10
      142 CAPTURE                          VAL R14
      143 CAPTURE                          VAL R11
      144 CAPTURE                          VAL R12
      145 CAPTURE                          VAL R13
      146 NEWTABLE                         R17 0 9
      148 MOVE                             R18 R5
      149 MOVE                             R19 R9
      150 MOVE                             R20 R4
      151 MOVE                             R21 R8
      152 MOVE                             R22 R6
      153 MOVE                             R23 R10
      154 MOVE                             R24 R11
      155 MOVE                             R25 R12
      156 MOVE                             R26 R13
      157 SETLIST                          R17 R18 9 [1]
      159 CALL                             R15 2 1
      160 GETUPVAL                         R16 14
      161 GETTABLEKS                       R16 R16 K13 ["useReplicatedState"]
      163 LOADK                            R17 K14 ["AnimationParameterContext_AnimationParametersState"]
      164 MOVE                             R18 R5
      165 CALL                             R16 2 0
      166 GETUPVAL                         R16 12
      167 CALL                             R16 0 1
      168 JUMPIFNOT                        R16 ; [+6]
      169 GETUPVAL                         R16 14
      170 GETTABLEKS                       R16 R16 K13 ["useReplicatedState"]
      172 LOADK                            R17 K15 ["AnimationParameterContext_ExpressionsState"]
      173 MOVE                             R18 R9
      174 CALL                             R16 2 0
      175 GETUPVAL                         R16 7
      176 CALL                             R16 0 1
      177 JUMPIFNOT                        R16 ; [+6]
      178 GETUPVAL                         R16 14
      179 GETTABLEKS                       R16 R16 K13 ["useReplicatedState"]
      181 LOADK                            R17 K16 ["AnimationParameterContext_ParameterDefinitionsState"]
      182 MOVE                             R18 R7
      183 CALL                             R16 2 0
      184 GETUPVAL                         R16 14
      185 GETTABLEKS                       R16 R16 K13 ["useReplicatedState"]
      187 LOADK                            R17 K17 ["AnimationParameterContext_PreviewAnimationParametersState"]
      188 MOVE                             R18 R11
      189 CALL                             R16 2 0
      190 GETUPVAL                         R16 14
      191 GETTABLEKS                       R16 R16 K18 ["useBoundAction"]
      193 LOADK                            R17 K19 ["AnimationParameterContext_SetAnimationParameterAsync"]
      194 MOVE                             R18 R10
      195 CALL                             R16 2 0
      196 GETUPVAL                         R16 14
      197 GETTABLEKS                       R16 R16 K18 ["useBoundAction"]
      199 LOADK                            R17 K20 ["AnimationParameterContext_SetAnimationNodeParameterAsync"]
      200 MOVE                             R18 R10
      201 CALL                             R16 2 0
      202 GETUPVAL                         R16 12
      203 CALL                             R16 0 1
      204 JUMPIFNOT                        R16 ; [+6]
      205 GETUPVAL                         R16 14
      206 GETTABLEKS                       R16 R16 K18 ["useBoundAction"]
      208 LOADK                            R17 K21 ["AnimationParameterContext_SetAnimationExpressionAsync"]
      209 MOVE                             R18 R14
      210 CALL                             R16 2 0
      211 GETUPVAL                         R16 14
      212 GETTABLEKS                       R16 R16 K18 ["useBoundAction"]
      214 LOADK                            R17 K22 ["AnimationParameterContext_SetPreviewAnimationParameters"]
      215 MOVE                             R18 R12
      216 CALL                             R16 2 0
      217 GETUPVAL                         R16 14
      218 GETTABLEKS                       R16 R16 K18 ["useBoundAction"]
      220 LOADK                            R17 K23 ["AnimationParameterContext_SetPreviewAnimationNodeParameterAsync"]
      221 MOVE                             R18 R13
      222 CALL                             R16 2 0
      223 GETUPVAL                         R16 0
      224 GETTABLEKS                       R16 R16 K24 ["createElement"]
      226 GETUPVAL                         R17 15
      227 GETTABLEKS                       R17 R17 K25 ["Provider"]
      229 DUPTABLE                         R18 K27 [{"value"}]
      230 SETTABLEKS                       R15 R18 K26 ["value"]
      232 GETTABLEKS                       R19 R0 K28 ["children"]
      234 CALL                             R16 3 -1
      235 RETURN                           R16 -1

PROTO_11:
        0 DUPTABLE                         R0 K11 [{"animationParameters", "expressions", "observeAnimationParameters", "observeExpressions", "observeParameterDefinitions", "previewAnimationParameters", "setAnimationParameterAsync", "setAnimationNodeParameterAsync", "setAnimationExpressionAsync", "setPreviewAnimationParameters", "setPreviewAnimationNodeParameterAsync"}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["animationParameters"]
        4 GETUPVAL                         R1 1
        5 SETTABLEKS                       R1 R0 K1 ["expressions"]
        7 GETUPVAL                         R1 2
        8 SETTABLEKS                       R1 R0 K2 ["observeAnimationParameters"]
       10 GETUPVAL                         R1 3
       11 SETTABLEKS                       R1 R0 K3 ["observeExpressions"]
       13 GETUPVAL                         R1 4
       14 SETTABLEKS                       R1 R0 K4 ["observeParameterDefinitions"]
       16 GETUPVAL                         R1 5
       17 SETTABLEKS                       R1 R0 K5 ["previewAnimationParameters"]
       19 GETUPVAL                         R1 6
       20 SETTABLEKS                       R1 R0 K6 ["setAnimationParameterAsync"]
       22 GETUPVAL                         R1 7
       23 SETTABLEKS                       R1 R0 K7 ["setAnimationNodeParameterAsync"]
       25 GETUPVAL                         R1 8
       26 SETTABLEKS                       R1 R0 K8 ["setAnimationExpressionAsync"]
       28 GETUPVAL                         R1 9
       29 SETTABLEKS                       R1 R0 K9 ["setPreviewAnimationParameters"]
       31 GETUPVAL                         R1 10
       32 SETTABLEKS                       R1 R0 K10 ["setPreviewAnimationNodeParameterAsync"]
       34 RETURN                           R0 1

PROTO_12:
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
       20 GETUPVAL                         R4 0
       21 GETTABLEKS                       R4 R4 K0 ["useReplicatedStateListener"]
       23 LOADK                            R5 K4 ["AnimationParameterContext_ParameterDefinitionsState"]
       24 NEWTABLE                         R6 0 0
       26 CALL                             R4 2 1
       27 GETUPVAL                         R5 1
       28 MOVE                             R6 R1
       29 CALL                             R5 1 1
       30 GETUPVAL                         R6 1
       31 MOVE                             R7 R2
       32 CALL                             R6 1 1
       33 GETUPVAL                         R7 1
       34 MOVE                             R8 R4
       35 CALL                             R7 1 1
       36 GETUPVAL                         R8 0
       37 GETTABLEKS                       R8 R8 K5 ["useBoundAction"]
       39 LOADK                            R9 K6 ["AnimationParameterContext_SetAnimationParameterAsync"]
       40 CALL                             R8 1 1
       41 GETUPVAL                         R9 0
       42 GETTABLEKS                       R9 R9 K5 ["useBoundAction"]
       44 LOADK                            R10 K7 ["AnimationParameterContext_SetAnimationNodeParameterAsync"]
       45 CALL                             R9 1 1
       46 GETUPVAL                         R10 0
       47 GETTABLEKS                       R10 R10 K5 ["useBoundAction"]
       49 LOADK                            R11 K8 ["AnimationParameterContext_SetAnimationExpressionAsync"]
       50 CALL                             R10 1 1
       51 GETUPVAL                         R11 0
       52 GETTABLEKS                       R11 R11 K5 ["useBoundAction"]
       54 LOADK                            R12 K9 ["AnimationParameterContext_SetPreviewAnimationParameters"]
       55 CALL                             R11 1 1
       56 GETUPVAL                         R12 0
       57 GETTABLEKS                       R12 R12 K5 ["useBoundAction"]
       59 LOADK                            R13 K10 ["AnimationParameterContext_SetPreviewAnimationNodeParameterAsync"]
       60 CALL                             R12 1 1
       61 GETUPVAL                         R13 2
       62 GETTABLEKS                       R13 R13 K11 ["useMemo"]
       64 NEWCLOSURE                       R14 P0
       65 CAPTURE                          VAL R1
       66 CAPTURE                          VAL R2
       67 CAPTURE                          VAL R5
       68 CAPTURE                          VAL R6
       69 CAPTURE                          VAL R7
       70 CAPTURE                          VAL R3
       71 CAPTURE                          VAL R8
       72 CAPTURE                          VAL R9
       73 CAPTURE                          VAL R10
       74 CAPTURE                          VAL R11
       75 CAPTURE                          VAL R12
       76 NEWTABLE                         R15 0 10
       78 MOVE                             R16 R1
       79 MOVE                             R17 R2
       80 MOVE                             R18 R5
       81 MOVE                             R19 R6
       82 MOVE                             R20 R7
       83 MOVE                             R21 R3
       84 MOVE                             R22 R8
       85 MOVE                             R23 R9
       86 MOVE                             R24 R11
       87 MOVE                             R25 R12
       88 SETLIST                          R15 R16 10 [1]
       90 CALL                             R13 2 1
       91 GETUPVAL                         R14 2
       92 GETTABLEKS                       R14 R14 K12 ["createElement"]
       94 GETUPVAL                         R15 3
       95 GETTABLEKS                       R15 R15 K13 ["Provider"]
       97 DUPTABLE                         R16 K15 [{"value"}]
       98 SETTABLEKS                       R13 R16 K14 ["value"]
      100 GETTABLEKS                       R17 R0 K16 ["children"]
      102 CALL                             R14 3 -1
      103 RETURN                           R14 -1

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
       17 GETTABLEKS                       R3 R3 K11 ["GraphDirtyStateContext"]
       19 GETTABLEKS                       R3 R3 K12 ["GraphDirtyUtils"]
       21 CALL                             R2 1 1
       22 GETIMPORT                        R3 K9 [require]
       24 GETTABLEKS                       R4 R0 K10 ["Contexts"]
       26 GETTABLEKS                       R4 R4 K13 ["NativeGraphContext"]
       28 CALL                             R3 1 1
       29 GETIMPORT                        R4 K9 [require]
       31 GETTABLEKS                       R5 R0 K10 ["Contexts"]
       33 GETTABLEKS                       R5 R5 K13 ["NativeGraphContext"]
       35 GETTABLEKS                       R5 R5 K14 ["NativeGraphUtils"]
       37 CALL                             R4 1 1
       38 GETIMPORT                        R5 K9 [require]
       40 GETTABLEKS                       R6 R0 K15 ["Util"]
       42 GETTABLEKS                       R6 R6 K16 ["Networking"]
       44 GETTABLEKS                       R6 R6 K17 ["NetworkUtils"]
       46 CALL                             R5 1 1
       47 GETIMPORT                        R6 K9 [require]
       49 GETTABLEKS                       R7 R0 K18 ["Parent"]
       51 GETTABLEKS                       R7 R7 K19 ["NodeGraphing"]
       53 CALL                             R6 1 1
       54 GETIMPORT                        R7 K9 [require]
       56 GETTABLEKS                       R8 R0 K18 ["Parent"]
       58 GETTABLEKS                       R8 R8 K20 ["React"]
       60 CALL                             R7 1 1
       61 GETIMPORT                        R8 K9 [require]
       63 GETTABLEKS                       R9 R0 K18 ["Parent"]
       65 GETTABLEKS                       R9 R9 K21 ["ReactUtils"]
       67 CALL                             R8 1 1
       68 GETIMPORT                        R9 K9 [require]
       70 GETTABLEKS                       R10 R0 K10 ["Contexts"]
       72 GETTABLEKS                       R10 R10 K22 ["SelectedGraphContext"]
       74 CALL                             R9 1 1
       75 GETIMPORT                        R10 K9 [require]
       77 GETTABLEKS                       R11 R0 K18 ["Parent"]
       79 GETTABLEKS                       R11 R11 K23 ["Signals"]
       81 CALL                             R10 1 1
       82 GETIMPORT                        R11 K9 [require]
       84 GETTABLEKS                       R12 R0 K15 ["Util"]
       86 GETTABLEKS                       R12 R12 K23 ["Signals"]
       88 GETTABLEKS                       R12 R12 K24 ["SignalsInstanceUtils"]
       90 CALL                             R11 1 1
       91 GETIMPORT                        R12 K9 [require]
       93 GETTABLEKS                       R13 R0 K18 ["Parent"]
       95 GETTABLEKS                       R13 R13 K25 ["SignalsReact"]
       97 CALL                             R12 1 1
       98 GETIMPORT                        R13 K9 [require]
      100 GETTABLEKS                       R14 R0 K26 ["Flags"]
      102 GETTABLEKS                       R14 R14 K27 ["getFFlagAnimGraphUIDisallowParameterNodeDeletionOnNodeDelete"]
      104 CALL                             R13 1 1
      105 GETIMPORT                        R14 K9 [require]
      107 GETTABLEKS                       R15 R0 K26 ["Flags"]
      109 GETTABLEKS                       R15 R15 K28 ["getFFlagAnimGraphUIEnableExpressionNodes"]
      111 CALL                             R14 1 1
      112 GETIMPORT                        R15 K9 [require]
      114 GETTABLEKS                       R16 R0 K26 ["Flags"]
      116 GETTABLEKS                       R16 R16 K29 ["getFFlagAnimGraphUIPerNodeParameterOverride"]
      118 CALL                             R15 1 1
      119 GETIMPORT                        R16 K9 [require]
      121 GETTABLEKS                       R17 R0 K26 ["Flags"]
      123 GETTABLEKS                       R17 R17 K30 ["getFFlagAnimGraphUI_FixUndoHistory"]
      125 CALL                             R16 1 1
      126 GETIMPORT                        R17 K9 [require]
      128 GETTABLEKS                       R18 R0 K26 ["Flags"]
      130 GETTABLEKS                       R18 R18 K31 ["getFFlagAnimationEditorAnimationTypes"]
      132 CALL                             R17 1 1
      133 GETIMPORT                        R18 K9 [require]
      135 GETTABLEKS                       R19 R0 K32 ["Hooks"]
      137 GETTABLEKS                       R19 R19 K33 ["useStateToSignal"]
      139 CALL                             R18 1 1
      140 DUPTABLE                         R19 K45 [{"animationParameters", "expressions", "observeAnimationParameters", "observeExpressions", "observeParameterDefinitions", "setAnimationParameterAsync", "setAnimationNodeParameterAsync", "setAnimationExpressionAsync", "previewAnimationParameters", "setPreviewAnimationParameters", "setPreviewAnimationNodeParameterAsync"}]
      141 NEWTABLE                         R20 0 0
      143 SETTABLEKS                       R20 R19 K34 ["animationParameters"]
      145 NEWTABLE                         R20 0 0
      147 SETTABLEKS                       R20 R19 K35 ["expressions"]
      149 GETTABLEKS                       R20 R11 K46 ["of"]
      151 NEWTABLE                         R21 0 0
      153 CALL                             R20 1 1
      154 SETTABLEKS                       R20 R19 K36 ["observeAnimationParameters"]
      156 GETTABLEKS                       R20 R11 K46 ["of"]
      158 NEWTABLE                         R21 0 0
      160 CALL                             R20 1 1
      161 SETTABLEKS                       R20 R19 K37 ["observeExpressions"]
      163 GETTABLEKS                       R20 R11 K46 ["of"]
      165 NEWTABLE                         R21 0 0
      167 CALL                             R20 1 1
      168 SETTABLEKS                       R20 R19 K38 ["observeParameterDefinitions"]
      170 GETTABLEKS                       R20 R8 K47 ["createUnimplemented"]
      172 LOADK                            R21 K39 ["setAnimationParameterAsync"]
      173 CALL                             R20 1 1
      174 SETTABLEKS                       R20 R19 K39 ["setAnimationParameterAsync"]
      176 GETTABLEKS                       R20 R8 K47 ["createUnimplemented"]
      178 LOADK                            R21 K40 ["setAnimationNodeParameterAsync"]
      179 CALL                             R20 1 1
      180 SETTABLEKS                       R20 R19 K40 ["setAnimationNodeParameterAsync"]
      182 GETTABLEKS                       R20 R8 K47 ["createUnimplemented"]
      184 LOADK                            R21 K41 ["setAnimationExpressionAsync"]
      185 CALL                             R20 1 1
      186 SETTABLEKS                       R20 R19 K41 ["setAnimationExpressionAsync"]
      188 NEWTABLE                         R20 0 0
      190 SETTABLEKS                       R20 R19 K42 ["previewAnimationParameters"]
      192 GETTABLEKS                       R20 R8 K47 ["createUnimplemented"]
      194 LOADK                            R21 K43 ["setPreviewAnimationParameters"]
      195 CALL                             R20 1 1
      196 SETTABLEKS                       R20 R19 K43 ["setPreviewAnimationParameters"]
      198 GETTABLEKS                       R20 R8 K47 ["createUnimplemented"]
      200 LOADK                            R21 K44 ["setPreviewAnimationNodeParameterAsync"]
      201 CALL                             R20 1 1
      202 SETTABLEKS                       R20 R19 K44 ["setPreviewAnimationNodeParameterAsync"]
      204 GETTABLEKS                       R20 R7 K48 ["createContext"]
      206 MOVE                             R21 R19
      207 CALL                             R20 1 1
      208 DUPTABLE                         R21 K57 [{["PREVIEW_ANIMATION_PARAMETERS_MAP"] = "AnimationParameterContext_PreviewAnimationParametersState", ["ANIMATION_PARAMETERS_MAP"] = "AnimationParameterContext_AnimationParametersState", ["EXPRESSIONS_MAP"] = "AnimationParameterContext_ExpressionsState", ["PARAMETER_DEFINITIONS_MAP"] = "AnimationParameterContext_ParameterDefinitionsState"}]
      209 DUPTABLE                         R22 K68 [{["SET_ANIMATION_PARAMETER"] = "AnimationParameterContext_SetAnimationParameterAsync", ["SET_ANIMATION_NODE_PARAMETER"] = "AnimationParameterContext_SetAnimationNodeParameterAsync", ["SET_ANIMATION_EXPRESSION"] = "AnimationParameterContext_SetAnimationExpressionAsync", ["SET_PREVIEW_ANIMATION_PARAMETERS"] = "AnimationParameterContext_SetPreviewAnimationParameters", ["SET_PREVIEW_ANIMATION_NODE_PARAMETER"] = "AnimationParameterContext_SetPreviewAnimationNodeParameterAsync"}]
      210 DUPCLOSURE                       R23 K69 [PROTO_10]
      211 CAPTURE                          VAL R7
      212 CAPTURE                          VAL R3
      213 CAPTURE                          VAL R6
      214 CAPTURE                          VAL R9
      215 CAPTURE                          VAL R11
      216 CAPTURE                          VAL R17
      217 CAPTURE                          VAL R12
      218 CAPTURE                          VAL R13
      219 CAPTURE                          VAL R4
      220 CAPTURE                          VAL R1
      221 CAPTURE                          VAL R16
      222 CAPTURE                          VAL R2
      223 CAPTURE                          VAL R14
      224 CAPTURE                          VAL R15
      225 CAPTURE                          VAL R5
      226 CAPTURE                          VAL R20
      227 DUPCLOSURE                       R24 K70 [PROTO_12]
      228 CAPTURE                          VAL R5
      229 CAPTURE                          VAL R18
      230 CAPTURE                          VAL R7
      231 CAPTURE                          VAL R20
      232 DUPTABLE                         R25 K74 [{"Context", "EditableDataModelProvider", "UIDataModelProvider"}]
      233 SETTABLEKS                       R20 R25 K71 ["Context"]
      235 SETTABLEKS                       R23 R25 K72 ["EditableDataModelProvider"]
      237 SETTABLEKS                       R24 R25 K73 ["UIDataModelProvider"]
      239 RETURN                           R25 1
