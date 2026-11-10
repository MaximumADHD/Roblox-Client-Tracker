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
       26 JUMPIFNOT                        R4 ; [+7]
       27 GETUPVAL                         R5 1
       28 MOVE                             R7 R4
       29 GETIMPORT                        R8 K11 [Enum.FinishRecordingOperation.Commit]
       31 NAMECALL                         R5 R5 K12 ["FinishRecording"]
       33 CALL                             R5 3 0
       34 RETURN                           R0 0

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
       75 NEWTABLE                         R12 0 1
       77 GETTABLEKS                       R13 R3 K4 ["observeSelectedGraphInstance"]
       79 SETLIST                          R12 R13 1 [1]
       81 CALL                             R10 2 1
       82 GETUPVAL                         R11 0
       83 GETTABLEKS                       R11 R11 K8 ["useState"]
       85 LOADNIL                          R12
       86 CALL                             R11 1 2
       87 GETUPVAL                         R13 0
       88 GETTABLEKS                       R13 R13 K7 ["useCallback"]
       90 NEWCLOSURE                       R14 P3
       91 CAPTURE                          VAL R12
       92 NEWTABLE                         R15 0 1
       94 MOVE                             R16 R12
       95 SETLIST                          R15 R16 1 [1]
       97 CALL                             R13 2 1
       98 GETUPVAL                         R14 0
       99 GETTABLEKS                       R14 R14 K7 ["useCallback"]
      101 NEWCLOSURE                       R15 P4
      102 CAPTURE                          UPVAL U10
      103 CAPTURE                          VAL R1
      104 NEWTABLE                         R16 0 1
      106 GETTABLEKS                       R17 R1 K9 ["setExpressionNodeValueAsync"]
      108 SETLIST                          R16 R17 1 [1]
      110 CALL                             R14 2 1
      111 GETUPVAL                         R15 0
      112 GETTABLEKS                       R15 R15 K10 ["useEffect"]
      114 NEWCLOSURE                       R16 P5
      115 CAPTURE                          VAL R2
      116 CAPTURE                          VAL R12
      117 CAPTURE                          VAL R5
      118 NEWTABLE                         R17 0 4
      120 MOVE                             R18 R5
      121 GETTABLEKS                       R19 R2 K11 ["parameterOverrides"]
      123 GETTABLEKS                       R20 R2 K12 ["numOverrides"]
      125 MOVE                             R21 R12
      126 SETLIST                          R17 R18 4 [1]
      128 CALL                             R15 2 0
      129 GETUPVAL                         R15 0
      130 GETTABLEKS                       R15 R15 K3 ["useMemo"]
      132 NEWCLOSURE                       R16 P6
      133 CAPTURE                          VAL R5
      134 CAPTURE                          VAL R9
      135 CAPTURE                          VAL R4
      136 CAPTURE                          VAL R8
      137 CAPTURE                          VAL R6
      138 CAPTURE                          VAL R10
      139 CAPTURE                          VAL R14
      140 CAPTURE                          VAL R11
      141 CAPTURE                          VAL R12
      142 CAPTURE                          VAL R13
      143 NEWTABLE                         R17 0 9
      145 MOVE                             R18 R5
      146 MOVE                             R19 R9
      147 MOVE                             R20 R4
      148 MOVE                             R21 R8
      149 MOVE                             R22 R6
      150 MOVE                             R23 R10
      151 MOVE                             R24 R11
      152 MOVE                             R25 R12
      153 MOVE                             R26 R13
      154 SETLIST                          R17 R18 9 [1]
      156 CALL                             R15 2 1
      157 GETUPVAL                         R16 11
      158 GETTABLEKS                       R16 R16 K13 ["useReplicatedState"]
      160 LOADK                            R17 K14 ["AnimationParameterContext_AnimationParametersState"]
      161 MOVE                             R18 R5
      162 CALL                             R16 2 0
      163 GETUPVAL                         R16 10
      164 CALL                             R16 0 1
      165 JUMPIFNOT                        R16 ; [+6]
      166 GETUPVAL                         R16 11
      167 GETTABLEKS                       R16 R16 K13 ["useReplicatedState"]
      169 LOADK                            R17 K15 ["AnimationParameterContext_ExpressionsState"]
      170 MOVE                             R18 R9
      171 CALL                             R16 2 0
      172 GETUPVAL                         R16 7
      173 CALL                             R16 0 1
      174 JUMPIFNOT                        R16 ; [+6]
      175 GETUPVAL                         R16 11
      176 GETTABLEKS                       R16 R16 K13 ["useReplicatedState"]
      178 LOADK                            R17 K16 ["AnimationParameterContext_ParameterDefinitionsState"]
      179 MOVE                             R18 R7
      180 CALL                             R16 2 0
      181 GETUPVAL                         R16 11
      182 GETTABLEKS                       R16 R16 K13 ["useReplicatedState"]
      184 LOADK                            R17 K17 ["AnimationParameterContext_PreviewAnimationParametersState"]
      185 MOVE                             R18 R11
      186 CALL                             R16 2 0
      187 GETUPVAL                         R16 11
      188 GETTABLEKS                       R16 R16 K18 ["useBoundAction"]
      190 LOADK                            R17 K19 ["AnimationParameterContext_SetAnimationParameterAsync"]
      191 MOVE                             R18 R10
      192 CALL                             R16 2 0
      193 GETUPVAL                         R16 11
      194 GETTABLEKS                       R16 R16 K18 ["useBoundAction"]
      196 LOADK                            R17 K20 ["AnimationParameterContext_SetAnimationNodeParameterAsync"]
      197 MOVE                             R18 R10
      198 CALL                             R16 2 0
      199 GETUPVAL                         R16 10
      200 CALL                             R16 0 1
      201 JUMPIFNOT                        R16 ; [+6]
      202 GETUPVAL                         R16 11
      203 GETTABLEKS                       R16 R16 K18 ["useBoundAction"]
      205 LOADK                            R17 K21 ["AnimationParameterContext_SetAnimationExpressionAsync"]
      206 MOVE                             R18 R14
      207 CALL                             R16 2 0
      208 GETUPVAL                         R16 11
      209 GETTABLEKS                       R16 R16 K18 ["useBoundAction"]
      211 LOADK                            R17 K22 ["AnimationParameterContext_SetPreviewAnimationParameters"]
      212 MOVE                             R18 R12
      213 CALL                             R16 2 0
      214 GETUPVAL                         R16 11
      215 GETTABLEKS                       R16 R16 K18 ["useBoundAction"]
      217 LOADK                            R17 K23 ["AnimationParameterContext_SetPreviewAnimationNodeParameterAsync"]
      218 MOVE                             R18 R13
      219 CALL                             R16 2 0
      220 GETUPVAL                         R16 0
      221 GETTABLEKS                       R16 R16 K24 ["createElement"]
      223 GETUPVAL                         R17 12
      224 GETTABLEKS                       R17 R17 K25 ["Provider"]
      226 DUPTABLE                         R18 K27 [{"value"}]
      227 SETTABLEKS                       R15 R18 K26 ["value"]
      229 GETTABLEKS                       R19 R0 K28 ["children"]
      231 CALL                             R16 3 -1
      232 RETURN                           R16 -1

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
       17 GETTABLEKS                       R3 R3 K11 ["NativeGraphContext"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K9 [require]
       22 GETTABLEKS                       R4 R0 K10 ["Contexts"]
       24 GETTABLEKS                       R4 R4 K11 ["NativeGraphContext"]
       26 GETTABLEKS                       R4 R4 K12 ["NativeGraphUtils"]
       28 CALL                             R3 1 1
       29 GETIMPORT                        R4 K9 [require]
       31 GETTABLEKS                       R5 R0 K13 ["Util"]
       33 GETTABLEKS                       R5 R5 K14 ["Networking"]
       35 GETTABLEKS                       R5 R5 K15 ["NetworkUtils"]
       37 CALL                             R4 1 1
       38 GETIMPORT                        R5 K9 [require]
       40 GETTABLEKS                       R6 R0 K16 ["Parent"]
       42 GETTABLEKS                       R6 R6 K17 ["NodeGraphing"]
       44 CALL                             R5 1 1
       45 GETIMPORT                        R6 K9 [require]
       47 GETTABLEKS                       R7 R0 K16 ["Parent"]
       49 GETTABLEKS                       R7 R7 K18 ["React"]
       51 CALL                             R6 1 1
       52 GETIMPORT                        R7 K9 [require]
       54 GETTABLEKS                       R8 R0 K16 ["Parent"]
       56 GETTABLEKS                       R8 R8 K19 ["ReactUtils"]
       58 CALL                             R7 1 1
       59 GETIMPORT                        R8 K9 [require]
       61 GETTABLEKS                       R9 R0 K10 ["Contexts"]
       63 GETTABLEKS                       R9 R9 K20 ["SelectedGraphContext"]
       65 CALL                             R8 1 1
       66 GETIMPORT                        R9 K9 [require]
       68 GETTABLEKS                       R10 R0 K16 ["Parent"]
       70 GETTABLEKS                       R10 R10 K21 ["Signals"]
       72 CALL                             R9 1 1
       73 GETIMPORT                        R10 K9 [require]
       75 GETTABLEKS                       R11 R0 K13 ["Util"]
       77 GETTABLEKS                       R11 R11 K21 ["Signals"]
       79 GETTABLEKS                       R11 R11 K22 ["SignalsInstanceUtils"]
       81 CALL                             R10 1 1
       82 GETIMPORT                        R11 K9 [require]
       84 GETTABLEKS                       R12 R0 K16 ["Parent"]
       86 GETTABLEKS                       R12 R12 K23 ["SignalsReact"]
       88 CALL                             R11 1 1
       89 GETIMPORT                        R12 K9 [require]
       91 GETTABLEKS                       R13 R0 K24 ["Flags"]
       93 GETTABLEKS                       R13 R13 K25 ["getFFlagAnimGraphUIDisallowParameterNodeDeletionOnNodeDelete"]
       95 CALL                             R12 1 1
       96 GETIMPORT                        R13 K9 [require]
       98 GETTABLEKS                       R14 R0 K24 ["Flags"]
      100 GETTABLEKS                       R14 R14 K26 ["getFFlagAnimGraphUIEnableExpressionNodes"]
      102 CALL                             R13 1 1
      103 GETIMPORT                        R14 K9 [require]
      105 GETTABLEKS                       R15 R0 K24 ["Flags"]
      107 GETTABLEKS                       R15 R15 K27 ["getFFlagAnimationEditorAnimationTypes"]
      109 CALL                             R14 1 1
      110 GETIMPORT                        R15 K9 [require]
      112 GETTABLEKS                       R16 R0 K28 ["Hooks"]
      114 GETTABLEKS                       R16 R16 K29 ["useStateToSignal"]
      116 CALL                             R15 1 1
      117 DUPTABLE                         R16 K41 [{"animationParameters", "expressions", "observeAnimationParameters", "observeExpressions", "observeParameterDefinitions", "setAnimationParameterAsync", "setAnimationNodeParameterAsync", "setAnimationExpressionAsync", "previewAnimationParameters", "setPreviewAnimationParameters", "setPreviewAnimationNodeParameterAsync"}]
      118 NEWTABLE                         R17 0 0
      120 SETTABLEKS                       R17 R16 K30 ["animationParameters"]
      122 NEWTABLE                         R17 0 0
      124 SETTABLEKS                       R17 R16 K31 ["expressions"]
      126 GETTABLEKS                       R17 R10 K42 ["of"]
      128 NEWTABLE                         R18 0 0
      130 CALL                             R17 1 1
      131 SETTABLEKS                       R17 R16 K32 ["observeAnimationParameters"]
      133 GETTABLEKS                       R17 R10 K42 ["of"]
      135 NEWTABLE                         R18 0 0
      137 CALL                             R17 1 1
      138 SETTABLEKS                       R17 R16 K33 ["observeExpressions"]
      140 GETTABLEKS                       R17 R10 K42 ["of"]
      142 NEWTABLE                         R18 0 0
      144 CALL                             R17 1 1
      145 SETTABLEKS                       R17 R16 K34 ["observeParameterDefinitions"]
      147 GETTABLEKS                       R17 R7 K43 ["createUnimplemented"]
      149 LOADK                            R18 K35 ["setAnimationParameterAsync"]
      150 CALL                             R17 1 1
      151 SETTABLEKS                       R17 R16 K35 ["setAnimationParameterAsync"]
      153 GETTABLEKS                       R17 R7 K43 ["createUnimplemented"]
      155 LOADK                            R18 K36 ["setAnimationNodeParameterAsync"]
      156 CALL                             R17 1 1
      157 SETTABLEKS                       R17 R16 K36 ["setAnimationNodeParameterAsync"]
      159 GETTABLEKS                       R17 R7 K43 ["createUnimplemented"]
      161 LOADK                            R18 K37 ["setAnimationExpressionAsync"]
      162 CALL                             R17 1 1
      163 SETTABLEKS                       R17 R16 K37 ["setAnimationExpressionAsync"]
      165 NEWTABLE                         R17 0 0
      167 SETTABLEKS                       R17 R16 K38 ["previewAnimationParameters"]
      169 GETTABLEKS                       R17 R7 K43 ["createUnimplemented"]
      171 LOADK                            R18 K39 ["setPreviewAnimationParameters"]
      172 CALL                             R17 1 1
      173 SETTABLEKS                       R17 R16 K39 ["setPreviewAnimationParameters"]
      175 GETTABLEKS                       R17 R7 K43 ["createUnimplemented"]
      177 LOADK                            R18 K40 ["setPreviewAnimationNodeParameterAsync"]
      178 CALL                             R17 1 1
      179 SETTABLEKS                       R17 R16 K40 ["setPreviewAnimationNodeParameterAsync"]
      181 GETTABLEKS                       R17 R6 K44 ["createContext"]
      183 MOVE                             R18 R16
      184 CALL                             R17 1 1
      185 DUPTABLE                         R18 K53 [{["PREVIEW_ANIMATION_PARAMETERS_MAP"] = "AnimationParameterContext_PreviewAnimationParametersState", ["ANIMATION_PARAMETERS_MAP"] = "AnimationParameterContext_AnimationParametersState", ["EXPRESSIONS_MAP"] = "AnimationParameterContext_ExpressionsState", ["PARAMETER_DEFINITIONS_MAP"] = "AnimationParameterContext_ParameterDefinitionsState"}]
      186 DUPTABLE                         R19 K64 [{["SET_ANIMATION_PARAMETER"] = "AnimationParameterContext_SetAnimationParameterAsync", ["SET_ANIMATION_NODE_PARAMETER"] = "AnimationParameterContext_SetAnimationNodeParameterAsync", ["SET_ANIMATION_EXPRESSION"] = "AnimationParameterContext_SetAnimationExpressionAsync", ["SET_PREVIEW_ANIMATION_PARAMETERS"] = "AnimationParameterContext_SetPreviewAnimationParameters", ["SET_PREVIEW_ANIMATION_NODE_PARAMETER"] = "AnimationParameterContext_SetPreviewAnimationNodeParameterAsync"}]
      187 DUPCLOSURE                       R20 K65 [PROTO_10]
      188 CAPTURE                          VAL R6
      189 CAPTURE                          VAL R2
      190 CAPTURE                          VAL R5
      191 CAPTURE                          VAL R8
      192 CAPTURE                          VAL R10
      193 CAPTURE                          VAL R14
      194 CAPTURE                          VAL R11
      195 CAPTURE                          VAL R12
      196 CAPTURE                          VAL R3
      197 CAPTURE                          VAL R1
      198 CAPTURE                          VAL R13
      199 CAPTURE                          VAL R4
      200 CAPTURE                          VAL R17
      201 DUPCLOSURE                       R21 K66 [PROTO_12]
      202 CAPTURE                          VAL R4
      203 CAPTURE                          VAL R15
      204 CAPTURE                          VAL R6
      205 CAPTURE                          VAL R17
      206 DUPTABLE                         R22 K70 [{"Context", "EditableDataModelProvider", "UIDataModelProvider"}]
      207 SETTABLEKS                       R17 R22 K67 ["Context"]
      209 SETTABLEKS                       R20 R22 K68 ["EditableDataModelProvider"]
      211 SETTABLEKS                       R21 R22 K69 ["UIDataModelProvider"]
      213 RETURN                           R22 1
