PROTO_0:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+3]
        3 GETUPVAL                         R1 1
        4 NOT                              R0 R1
        5 RETURN                           R0 1
        6 GETUPVAL                         R1 2
        7 GETTABLEKS                       R1 R1 K0 ["selectedRigId"]
        9 JUMPIFNOTEQKNIL                  R1 ; [+2]
       11 LOADB                            R0 0 +1
       12 LOADB                            R0 1
       13 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["observeSelectedRig"]
        3 LOADB                            R1 0
        4 CALL                             R0 1 1
        5 JUMPIFNOTEQKNIL                  R0 ; [+6]
        7 GETUPVAL                         R1 1
        8 CALL                             R1 0 1
        9 JUMPIF                           R1 ; [+2]
       10 LOADNIL                          R1
       11 RETURN                           R1 1
       12 GETUPVAL                         R1 2
       13 LOADK                            R3 K1 ["CreateGraphContext.createNewGraphAsync"]
       14 LOADK                            R4 K2 ["Create new graph"]
       15 NAMECALL                         R1 R1 K3 ["TryBeginRecording"]
       17 CALL                             R1 3 1
       18 GETUPVAL                         R2 3
       19 GETTABLEKS                       R2 R2 K4 ["createNewAnimationGraph"]
       21 MOVE                             R3 R0
       22 GETUPVAL                         R4 4
       23 LOADK                            R6 K5 ["Common"]
       24 LOADK                            R7 K6 ["AnimationEditor"]
       25 LOADK                            R8 K7 ["Menu"]
       26 LOADK                            R9 K8 ["GraphDefaultName"]
       27 NAMECALL                         R4 R4 K9 ["getExternalText"]
       29 CALL                             R4 5 -1
       30 CALL                             R2 -1 1
       31 JUMPIFNOT                        R2 ; [+25]
       32 GETUPVAL                         R3 5
       33 GETTABLEKS                       R3 R3 K10 ["updateGraphTimestamp"]
       35 MOVE                             R4 R2
       36 CALL                             R3 1 0
       37 GETUPVAL                         R3 1
       38 CALL                             R3 0 1
       39 JUMPIFNOT                        R3 ; [+6]
       40 GETUPVAL                         R3 6
       41 GETTABLEKS                       R3 R3 K11 ["setSelectedGraphInstance"]
       43 MOVE                             R4 R2
       44 CALL                             R3 1 0
       45 JUMP                             ; [+11]
       46 GETUPVAL                         R3 7
       47 GETTABLEKS                       R3 R3 K12 ["selectionService"]
       49 NEWTABLE                         R5 0 1
       51 MOVE                             R6 R2
       52 SETLIST                          R5 R6 1 [1]
       54 NAMECALL                         R3 R3 K13 ["Set"]
       56 CALL                             R3 2 0
       57 JUMPIFNOT                        R1 ; [+7]
       58 GETUPVAL                         R3 2
       59 MOVE                             R5 R1
       60 GETIMPORT                        R6 K17 [Enum.FinishRecordingOperation.Commit]
       62 NAMECALL                         R3 R3 K18 ["FinishRecording"]
       64 CALL                             R3 3 0
       65 RETURN                           R2 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["observeSelectedRig"]
        3 LOADB                            R2 0
        4 CALL                             R1 1 1
        5 JUMPIFNOTEQKNIL                  R1 ; [+5]
        7 GETUPVAL                         R2 1
        8 CALL                             R2 0 1
        9 JUMPIF                           R2 ; [+1]
       10 RETURN                           R0 0
       11 LOADK                            R2 K1 ["rbxassetid://%*"]
       12 MOVE                             R4 R0
       13 NAMECALL                         R2 R2 K2 ["format"]
       15 CALL                             R2 2 1
       16 GETUPVAL                         R3 2
       17 MOVE                             R5 R2
       18 NAMECALL                         R3 R3 K3 ["GetAnimationClipAsync"]
       20 CALL                             R3 2 1
       21 GETUPVAL                         R4 3
       22 MOVE                             R5 R2
       23 MOVE                             R6 R3
       24 MOVE                             R7 R1
       25 GETUPVAL                         R8 4
       26 GETTABLEKS                       R8 R8 K4 ["selectionService"]
       28 CALL                             R4 4 0
       29 RETURN                           R0 0

PROTO_3:
        0 JUMPIFNOTEQKNIL                  R0 ; [+7]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K0 ["of"]
        5 LOADNIL                          R2
        6 CALL                             R1 1 -1
        7 RETURN                           R1 -1
        8 GETUPVAL                         R1 1
        9 GETTABLEKS                       R1 R1 K1 ["properties"]
       11 GETTABLEKS                       R1 R1 K2 ["observeString"]
       13 MOVE                             R2 R0
       14 LOADK                            R3 K3 ["Name"]
       15 CALL                             R1 2 -1
       16 RETURN                           R1 -1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["switchMap"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["observeSelectedRig"]
        6 DUPCLOSURE                       R2 K2 [PROTO_3]
        7 CAPTURE                          UPVAL U0
        8 CAPTURE                          UPVAL U2
        9 CALL                             R0 2 -1
       10 RETURN                           R0 -1

PROTO_5:
        0 DUPTABLE                         R0 K4 [{"canCreateGraph", "selectedTargetName", "createNewGraphAsync", "createGraphFromIdAsync"}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["canCreateGraph"]
        4 GETUPVAL                         R1 1
        5 SETTABLEKS                       R1 R0 K1 ["selectedTargetName"]
        7 GETUPVAL                         R1 2
        8 SETTABLEKS                       R1 R0 K2 ["createNewGraphAsync"]
       10 GETUPVAL                         R1 3
       11 SETTABLEKS                       R1 R0 K3 ["createGraphFromIdAsync"]
       13 RETURN                           R0 1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["ContextServices"]
        3 GETTABLEKS                       R1 R1 K1 ["Localization"]
        5 NAMECALL                         R1 R1 K2 ["use"]
        7 CALL                             R1 1 1
        8 GETUPVAL                         R2 1
        9 GETTABLEKS                       R2 R2 K3 ["useContext"]
       11 GETUPVAL                         R3 2
       12 GETTABLEKS                       R3 R3 K4 ["Context"]
       14 CALL                             R2 1 1
       15 GETUPVAL                         R3 1
       16 GETTABLEKS                       R3 R3 K3 ["useContext"]
       18 GETUPVAL                         R4 3
       19 GETTABLEKS                       R4 R4 K4 ["Context"]
       21 CALL                             R3 1 1
       22 GETUPVAL                         R4 1
       23 GETTABLEKS                       R4 R4 K3 ["useContext"]
       25 GETUPVAL                         R5 4
       26 GETTABLEKS                       R5 R5 K4 ["Context"]
       28 CALL                             R4 1 1
       29 GETUPVAL                         R6 5
       30 CALL                             R6 0 1
       31 JUMPIFNOT                        R6 ; [+8]
       32 GETUPVAL                         R5 1
       33 GETTABLEKS                       R5 R5 K3 ["useContext"]
       35 GETUPVAL                         R6 6
       36 GETTABLEKS                       R6 R6 K4 ["Context"]
       38 CALL                             R5 1 1
       39 JUMP                             ; [+1]
       40 LOADNIL                          R5
       41 GETUPVAL                         R7 5
       42 CALL                             R7 0 1
       43 JUMPIFNOT                        R7 ; [+8]
       44 GETUPVAL                         R6 1
       45 GETTABLEKS                       R6 R6 K3 ["useContext"]
       47 GETUPVAL                         R7 7
       48 GETTABLEKS                       R7 R7 K4 ["Context"]
       50 CALL                             R6 1 1
       51 JUMP                             ; [+1]
       52 LOADNIL                          R6
       53 GETUPVAL                         R8 5
       54 CALL                             R8 0 1
       55 JUMPIFNOT                        R8 ; [+3]
       56 GETTABLEKS                       R7 R5 K5 ["isPreviewRunning"]
       58 JUMP                             ; [+1]
       59 LOADNIL                          R7
       60 GETUPVAL                         R8 1
       61 GETTABLEKS                       R8 R8 K6 ["useMemo"]
       63 NEWCLOSURE                       R9 P0
       64 CAPTURE                          UPVAL U5
       65 CAPTURE                          VAL R7
       66 CAPTURE                          VAL R3
       67 NEWTABLE                         R10 0 2
       69 GETTABLEKS                       R11 R3 K7 ["selectedRigId"]
       71 MOVE                             R12 R7
       72 SETLIST                          R10 R11 2 [1]
       74 CALL                             R8 2 1
       75 GETUPVAL                         R9 1
       76 GETTABLEKS                       R9 R9 K8 ["useCallback"]
       78 NEWCLOSURE                       R10 P1
       79 CAPTURE                          VAL R3
       80 CAPTURE                          UPVAL U5
       81 CAPTURE                          UPVAL U8
       82 CAPTURE                          UPVAL U9
       83 CAPTURE                          VAL R1
       84 CAPTURE                          VAL R4
       85 CAPTURE                          VAL R6
       86 CAPTURE                          VAL R2
       87 NEWTABLE                         R11 0 5
       89 GETTABLEKS                       R12 R3 K9 ["observeSelectedRig"]
       91 MOVE                             R13 R1
       92 GETTABLEKS                       R14 R2 K10 ["selectionService"]
       94 GETTABLEKS                       R15 R4 K11 ["updateGraphTimestamp"]
       96 GETUPVAL                         R17 5
       97 CALL                             R17 0 1
       98 JUMPIFNOT                        R17 ; [+3]
       99 GETTABLEKS                       R16 R6 K12 ["setSelectedGraphInstance"]
      101 JUMP                             ; [+1]
      102 LOADNIL                          R16
      103 SETLIST                          R11 R12 5 [1]
      105 CALL                             R9 2 1
      106 GETUPVAL                         R10 1
      107 GETTABLEKS                       R10 R10 K8 ["useCallback"]
      109 NEWCLOSURE                       R11 P2
      110 CAPTURE                          VAL R3
      111 CAPTURE                          UPVAL U5
      112 CAPTURE                          UPVAL U10
      113 CAPTURE                          UPVAL U11
      114 CAPTURE                          VAL R2
      115 NEWTABLE                         R12 0 3
      117 GETTABLEKS                       R13 R3 K9 ["observeSelectedRig"]
      119 GETUPVAL                         R14 11
      120 GETTABLEKS                       R15 R2 K10 ["selectionService"]
      122 SETLIST                          R12 R13 3 [1]
      124 CALL                             R10 2 1
      125 GETUPVAL                         R11 1
      126 GETTABLEKS                       R11 R11 K6 ["useMemo"]
      128 NEWCLOSURE                       R12 P3
      129 CAPTURE                          UPVAL U12
      130 CAPTURE                          VAL R3
      131 CAPTURE                          UPVAL U13
      132 NEWTABLE                         R13 0 1
      134 GETTABLEKS                       R14 R3 K9 ["observeSelectedRig"]
      136 SETLIST                          R13 R14 1 [1]
      138 CALL                             R11 2 1
      139 GETUPVAL                         R12 14
      140 GETTABLEKS                       R12 R12 K13 ["useSignalState"]
      142 MOVE                             R13 R11
      143 CALL                             R12 1 1
      144 GETUPVAL                         R13 1
      145 GETTABLEKS                       R13 R13 K6 ["useMemo"]
      147 NEWCLOSURE                       R14 P4
      148 CAPTURE                          VAL R8
      149 CAPTURE                          VAL R12
      150 CAPTURE                          VAL R9
      151 CAPTURE                          VAL R10
      152 NEWTABLE                         R15 0 4
      154 MOVE                             R16 R8
      155 MOVE                             R17 R12
      156 MOVE                             R18 R9
      157 MOVE                             R19 R10
      158 SETLIST                          R15 R16 4 [1]
      160 CALL                             R13 2 1
      161 GETUPVAL                         R14 15
      162 GETTABLEKS                       R14 R14 K14 ["useReplicatedState"]
      164 LOADK                            R15 K15 ["CreateGraphContext_CanCreateGraph"]
      165 MOVE                             R16 R8
      166 CALL                             R14 2 0
      167 GETUPVAL                         R14 15
      168 GETTABLEKS                       R14 R14 K14 ["useReplicatedState"]
      170 LOADK                            R15 K16 ["CreateGraphContext_SelectedTargetName"]
      171 MOVE                             R16 R12
      172 CALL                             R14 2 0
      173 GETUPVAL                         R14 15
      174 GETTABLEKS                       R14 R14 K17 ["useBoundAction"]
      176 LOADK                            R15 K18 ["CreateGraphContext_CreateNewGraphAsync"]
      177 MOVE                             R16 R9
      178 CALL                             R14 2 0
      179 GETUPVAL                         R14 15
      180 GETTABLEKS                       R14 R14 K17 ["useBoundAction"]
      182 LOADK                            R15 K19 ["CreateGraphContext_CreateGraphFromIdAsync"]
      183 MOVE                             R16 R10
      184 CALL                             R14 2 0
      185 GETUPVAL                         R14 1
      186 GETTABLEKS                       R14 R14 K20 ["createElement"]
      188 GETUPVAL                         R15 16
      189 GETTABLEKS                       R15 R15 K21 ["Provider"]
      191 DUPTABLE                         R16 K23 [{"value"}]
      192 SETTABLEKS                       R13 R16 K22 ["value"]
      194 GETTABLEKS                       R17 R0 K24 ["children"]
      196 CALL                             R14 3 -1
      197 RETURN                           R14 -1

PROTO_7:
        0 DUPTABLE                         R0 K4 [{"canCreateGraph", "selectedTargetName", "createNewGraphAsync", "createGraphFromIdAsync"}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["canCreateGraph"]
        4 GETUPVAL                         R1 1
        5 SETTABLEKS                       R1 R0 K1 ["selectedTargetName"]
        7 GETUPVAL                         R1 2
        8 SETTABLEKS                       R1 R0 K2 ["createNewGraphAsync"]
       10 GETUPVAL                         R1 3
       11 SETTABLEKS                       R1 R0 K3 ["createGraphFromIdAsync"]
       13 RETURN                           R0 1

PROTO_8:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 JUMPIFNOT                        R2 ; [+8]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K0 ["useContext"]
        6 GETUPVAL                         R2 2
        7 GETTABLEKS                       R2 R2 K1 ["Context"]
        9 CALL                             R1 1 1
       10 JUMP                             ; [+1]
       11 LOADNIL                          R1
       12 GETUPVAL                         R3 0
       13 CALL                             R3 0 1
       14 JUMPIFNOT                        R3 ; [+3]
       15 GETTABLEKS                       R2 R1 K2 ["isPreviewRunning"]
       17 JUMP                             ; [+1]
       18 LOADNIL                          R2
       19 GETUPVAL                         R3 3
       20 GETTABLEKS                       R3 R3 K3 ["useReplicatedStateListener"]
       22 LOADK                            R4 K4 ["CreateGraphContext_CanCreateGraph"]
       23 LOADB                            R5 0
       24 CALL                             R3 2 1
       25 GETUPVAL                         R4 0
       26 CALL                             R4 0 1
       27 JUMPIFNOT                        R4 ; [+2]
       28 JUMPIFNOT                        R2 ; [+1]
       29 LOADB                            R3 0
       30 GETUPVAL                         R4 3
       31 GETTABLEKS                       R4 R4 K3 ["useReplicatedStateListener"]
       33 LOADK                            R5 K5 ["CreateGraphContext_SelectedTargetName"]
       34 LOADNIL                          R6
       35 CALL                             R4 2 1
       36 GETUPVAL                         R5 3
       37 GETTABLEKS                       R5 R5 K6 ["useBoundAction"]
       39 LOADK                            R6 K7 ["CreateGraphContext_CreateNewGraphAsync"]
       40 CALL                             R5 1 1
       41 GETUPVAL                         R6 3
       42 GETTABLEKS                       R6 R6 K6 ["useBoundAction"]
       44 LOADK                            R7 K8 ["CreateGraphContext_CreateGraphFromIdAsync"]
       45 CALL                             R6 1 1
       46 GETUPVAL                         R7 1
       47 GETTABLEKS                       R7 R7 K9 ["useMemo"]
       49 NEWCLOSURE                       R8 P0
       50 CAPTURE                          REF R3
       51 CAPTURE                          VAL R4
       52 CAPTURE                          VAL R5
       53 CAPTURE                          VAL R6
       54 NEWTABLE                         R9 0 4
       56 MOVE                             R10 R3
       57 MOVE                             R11 R4
       58 MOVE                             R12 R5
       59 MOVE                             R13 R6
       60 SETLIST                          R9 R10 4 [1]
       62 CALL                             R7 2 1
       63 GETUPVAL                         R8 1
       64 GETTABLEKS                       R8 R8 K10 ["createElement"]
       66 GETUPVAL                         R9 4
       67 GETTABLEKS                       R9 R9 K11 ["Provider"]
       69 DUPTABLE                         R10 K13 [{"value"}]
       70 SETTABLEKS                       R7 R10 K12 ["value"]
       72 GETTABLEKS                       R11 R0 K14 ["children"]
       74 CALL                             R8 3 -1
       75 CLOSEUPVALS                      R3
       76 RETURN                           R8 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [game]
        9 LOADK                            R3 K6 ["AnimationClipProvider"]
       10 NAMECALL                         R1 R1 K7 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K5 [game]
       15 LOADK                            R4 K8 ["ChangeHistoryService"]
       16 NAMECALL                         R2 R2 K7 ["GetService"]
       18 CALL                             R2 2 1
       19 GETIMPORT                        R3 K10 [require]
       21 GETTABLEKS                       R4 R0 K11 ["Parent"]
       23 GETTABLEKS                       R4 R4 K12 ["Framework"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K10 [require]
       28 GETTABLEKS                       R5 R0 K13 ["Contexts"]
       30 GETTABLEKS                       R5 R5 K14 ["GraphPlayedContext"]
       32 CALL                             R4 1 1
       33 GETIMPORT                        R5 K10 [require]
       35 GETTABLEKS                       R6 R0 K13 ["Contexts"]
       37 GETTABLEKS                       R6 R6 K15 ["GraphTimestampContext"]
       39 CALL                             R5 1 1
       40 GETIMPORT                        R6 K10 [require]
       42 GETTABLEKS                       R7 R0 K13 ["Contexts"]
       44 GETTABLEKS                       R7 R7 K16 ["NativeGraphContext"]
       46 GETTABLEKS                       R7 R7 K17 ["NativeGraphUtils"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K10 [require]
       51 GETTABLEKS                       R8 R0 K18 ["Util"]
       53 GETTABLEKS                       R8 R8 K19 ["Networking"]
       55 GETTABLEKS                       R8 R8 K20 ["NetworkUtils"]
       57 CALL                             R7 1 1
       58 GETIMPORT                        R8 K10 [require]
       60 GETTABLEKS                       R9 R0 K11 ["Parent"]
       62 GETTABLEKS                       R9 R9 K21 ["NodeGraphing"]
       64 CALL                             R8 1 1
       65 GETIMPORT                        R9 K10 [require]
       67 GETTABLEKS                       R10 R0 K11 ["Parent"]
       69 GETTABLEKS                       R10 R10 K22 ["React"]
       71 CALL                             R9 1 1
       72 GETIMPORT                        R10 K10 [require]
       74 GETTABLEKS                       R11 R0 K13 ["Contexts"]
       76 GETTABLEKS                       R11 R11 K23 ["RigListContext"]
       78 CALL                             R10 1 1
       79 GETIMPORT                        R11 K10 [require]
       81 GETTABLEKS                       R12 R0 K13 ["Contexts"]
       83 GETTABLEKS                       R12 R12 K24 ["SelectedGraphContext"]
       85 CALL                             R11 1 1
       86 GETIMPORT                        R12 K10 [require]
       88 GETTABLEKS                       R13 R0 K13 ["Contexts"]
       90 GETTABLEKS                       R13 R13 K25 ["SelectionServiceContext"]
       92 CALL                             R12 1 1
       93 GETIMPORT                        R13 K10 [require]
       95 GETTABLEKS                       R14 R0 K11 ["Parent"]
       97 GETTABLEKS                       R14 R14 K26 ["Signals"]
       99 CALL                             R13 1 1
      100 GETIMPORT                        R14 K10 [require]
      102 GETTABLEKS                       R15 R0 K18 ["Util"]
      104 GETTABLEKS                       R15 R15 K26 ["Signals"]
      106 GETTABLEKS                       R15 R15 K27 ["SignalsInstanceUtils"]
      108 CALL                             R14 1 1
      109 GETIMPORT                        R15 K10 [require]
      111 GETTABLEKS                       R16 R0 K11 ["Parent"]
      113 GETTABLEKS                       R16 R16 K28 ["SignalsReact"]
      115 CALL                             R15 1 1
      116 GETIMPORT                        R16 K10 [require]
      118 GETTABLEKS                       R17 R0 K18 ["Util"]
      120 GETTABLEKS                       R17 R17 K26 ["Signals"]
      122 GETTABLEKS                       R17 R17 K29 ["TypedInstanceSignals"]
      124 CALL                             R16 1 1
      125 GETIMPORT                        R17 K10 [require]
      127 GETTABLEKS                       R18 R0 K13 ["Contexts"]
      129 GETTABLEKS                       R18 R18 K30 ["CreateGraphContext"]
      131 GETTABLEKS                       R18 R18 K31 ["ContextDefinition"]
      133 CALL                             R17 1 1
      134 GETIMPORT                        R18 K10 [require]
      136 GETTABLEKS                       R19 R0 K32 ["Flags"]
      138 GETTABLEKS                       R19 R19 K33 ["getFFlagAnimGraphUI_RunTimeDebug"]
      140 CALL                             R18 1 1
      141 GETIMPORT                        R19 K10 [require]
      143 GETTABLEKS                       R20 R0 K13 ["Contexts"]
      145 GETTABLEKS                       R20 R20 K30 ["CreateGraphContext"]
      147 GETTABLEKS                       R20 R20 K34 ["insertAnimationClip"]
      149 CALL                             R19 1 1
      150 GETTABLEKS                       R20 R17 K35 ["Context"]
      152 DUPTABLE                         R21 K40 [{["CAN_CREATE_GRAPH"] = "CreateGraphContext_CanCreateGraph", ["SELECTED_TARGET_NAME"] = "CreateGraphContext_SelectedTargetName"}]
      153 DUPTABLE                         R22 K45 [{["CREATE_NEW_GRAPH"] = "CreateGraphContext_CreateNewGraphAsync", ["CREATE_GRAPH_FROM_ID"] = "CreateGraphContext_CreateGraphFromIdAsync"}]
      154 DUPCLOSURE                       R23 K46 [PROTO_6]
      155 CAPTURE                          VAL R3
      156 CAPTURE                          VAL R9
      157 CAPTURE                          VAL R12
      158 CAPTURE                          VAL R10
      159 CAPTURE                          VAL R5
      160 CAPTURE                          VAL R18
      161 CAPTURE                          VAL R4
      162 CAPTURE                          VAL R11
      163 CAPTURE                          VAL R2
      164 CAPTURE                          VAL R6
      165 CAPTURE                          VAL R1
      166 CAPTURE                          VAL R19
      167 CAPTURE                          VAL R14
      168 CAPTURE                          VAL R16
      169 CAPTURE                          VAL R15
      170 CAPTURE                          VAL R7
      171 CAPTURE                          VAL R20
      172 DUPCLOSURE                       R24 K47 [PROTO_8]
      173 CAPTURE                          VAL R18
      174 CAPTURE                          VAL R9
      175 CAPTURE                          VAL R4
      176 CAPTURE                          VAL R7
      177 CAPTURE                          VAL R20
      178 DUPTABLE                         R25 K50 [{"Context", "EditableDataModelProvider", "UIDataModelProvider"}]
      179 SETTABLEKS                       R20 R25 K35 ["Context"]
      181 SETTABLEKS                       R23 R25 K48 ["EditableDataModelProvider"]
      183 SETTABLEKS                       R24 R25 K49 ["UIDataModelProvider"]
      185 RETURN                           R25 1
