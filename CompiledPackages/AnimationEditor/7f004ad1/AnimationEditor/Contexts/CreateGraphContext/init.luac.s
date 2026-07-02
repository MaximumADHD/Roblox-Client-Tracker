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
        5 JUMPIFNOTEQKNIL                  R0 ; [+5]
        7 GETUPVAL                         R1 1
        8 CALL                             R1 0 1
        9 JUMPIF                           R1 ; [+1]
       10 RETURN                           R0 0
       11 GETUPVAL                         R1 2
       12 LOADK                            R3 K1 ["CreateGraphContext.createNewGraphAsync"]
       13 LOADK                            R4 K2 ["Create new graph"]
       14 NAMECALL                         R1 R1 K3 ["TryBeginRecording"]
       16 CALL                             R1 3 1
       17 GETUPVAL                         R2 3
       18 GETTABLEKS                       R2 R2 K4 ["createNewAnimationGraph"]
       20 MOVE                             R3 R0
       21 GETUPVAL                         R4 4
       22 LOADK                            R6 K5 ["Common"]
       23 LOADK                            R7 K6 ["AnimationEditor"]
       24 LOADK                            R8 K7 ["Menu"]
       25 LOADK                            R9 K8 ["GraphDefaultName"]
       26 NAMECALL                         R4 R4 K9 ["getExternalText"]
       28 CALL                             R4 5 -1
       29 CALL                             R2 -1 1
       30 JUMPIFNOT                        R2 ; [+28]
       31 GETUPVAL                         R3 5
       32 CALL                             R3 0 1
       33 JUMPIFNOT                        R3 ; [+5]
       34 GETUPVAL                         R3 6
       35 GETTABLEKS                       R3 R3 K10 ["updateGraphTimestamp"]
       37 MOVE                             R4 R2
       38 CALL                             R3 1 0
       39 GETUPVAL                         R3 1
       40 CALL                             R3 0 1
       41 JUMPIFNOT                        R3 ; [+6]
       42 GETUPVAL                         R3 7
       43 GETTABLEKS                       R3 R3 K11 ["setSelectedGraphInstance"]
       45 MOVE                             R4 R2
       46 CALL                             R3 1 0
       47 JUMP                             ; [+11]
       48 GETUPVAL                         R3 8
       49 GETTABLEKS                       R3 R3 K12 ["selectionService"]
       51 NEWTABLE                         R5 0 1
       53 MOVE                             R6 R2
       54 SETLIST                          R5 R6 1 [1]
       56 NAMECALL                         R3 R3 K13 ["Set"]
       58 CALL                             R3 2 0
       59 JUMPIFNOT                        R1 ; [+7]
       60 GETUPVAL                         R3 2
       61 MOVE                             R5 R1
       62 GETIMPORT                        R6 K17 [Enum.FinishRecordingOperation.Commit]
       64 NAMECALL                         R3 R3 K18 ["FinishRecording"]
       66 CALL                             R3 3 0
       67 RETURN                           R0 0

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
       11 LOADK                            R3 K1 ["rbxassetid://%*"]
       12 MOVE                             R5 R0
       13 NAMECALL                         R3 R3 K2 ["format"]
       15 CALL                             R3 2 1
       16 MOVE                             R2 R3
       17 GETUPVAL                         R3 2
       18 MOVE                             R5 R2
       19 NAMECALL                         R3 R3 K3 ["GetAnimationClipAsync"]
       21 CALL                             R3 2 1
       22 GETUPVAL                         R4 3
       23 MOVE                             R5 R2
       24 MOVE                             R6 R3
       25 MOVE                             R7 R1
       26 GETUPVAL                         R8 4
       27 GETTABLEKS                       R8 R8 K4 ["selectionService"]
       29 CALL                             R4 4 0
       30 RETURN                           R0 0

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
       84 CAPTURE                          UPVAL U10
       85 CAPTURE                          VAL R4
       86 CAPTURE                          VAL R6
       87 CAPTURE                          VAL R2
       88 NEWTABLE                         R11 0 5
       90 GETTABLEKS                       R12 R3 K9 ["observeSelectedRig"]
       92 MOVE                             R13 R1
       93 GETTABLEKS                       R14 R2 K10 ["selectionService"]
       95 GETTABLEKS                       R15 R4 K11 ["updateGraphTimestamp"]
       97 GETUPVAL                         R17 5
       98 CALL                             R17 0 1
       99 JUMPIFNOT                        R17 ; [+3]
      100 GETTABLEKS                       R16 R6 K12 ["setSelectedGraphInstance"]
      102 JUMP                             ; [+1]
      103 LOADNIL                          R16
      104 SETLIST                          R11 R12 5 [1]
      106 CALL                             R9 2 1
      107 GETUPVAL                         R10 1
      108 GETTABLEKS                       R10 R10 K8 ["useCallback"]
      110 NEWCLOSURE                       R11 P2
      111 CAPTURE                          VAL R3
      112 CAPTURE                          UPVAL U5
      113 CAPTURE                          UPVAL U11
      114 CAPTURE                          UPVAL U12
      115 CAPTURE                          VAL R2
      116 NEWTABLE                         R12 0 3
      118 GETTABLEKS                       R13 R3 K9 ["observeSelectedRig"]
      120 GETUPVAL                         R14 12
      121 GETTABLEKS                       R15 R2 K10 ["selectionService"]
      123 SETLIST                          R12 R13 3 [1]
      125 CALL                             R10 2 1
      126 GETUPVAL                         R11 1
      127 GETTABLEKS                       R11 R11 K6 ["useMemo"]
      129 NEWCLOSURE                       R12 P3
      130 CAPTURE                          UPVAL U13
      131 CAPTURE                          VAL R3
      132 CAPTURE                          UPVAL U14
      133 NEWTABLE                         R13 0 1
      135 GETTABLEKS                       R14 R3 K9 ["observeSelectedRig"]
      137 SETLIST                          R13 R14 1 [1]
      139 CALL                             R11 2 1
      140 GETUPVAL                         R12 15
      141 GETTABLEKS                       R12 R12 K13 ["useSignalState"]
      143 MOVE                             R13 R11
      144 CALL                             R12 1 1
      145 GETUPVAL                         R13 1
      146 GETTABLEKS                       R13 R13 K6 ["useMemo"]
      148 NEWCLOSURE                       R14 P4
      149 CAPTURE                          VAL R8
      150 CAPTURE                          VAL R12
      151 CAPTURE                          VAL R9
      152 CAPTURE                          VAL R10
      153 NEWTABLE                         R15 0 4
      155 MOVE                             R16 R8
      156 MOVE                             R17 R12
      157 MOVE                             R18 R9
      158 MOVE                             R19 R10
      159 SETLIST                          R15 R16 4 [1]
      161 CALL                             R13 2 1
      162 GETUPVAL                         R14 16
      163 GETTABLEKS                       R14 R14 K14 ["useReplicatedState"]
      165 LOADK                            R15 K15 ["CreateGraphContext_CanCreateGraph"]
      166 MOVE                             R16 R8
      167 CALL                             R14 2 0
      168 GETUPVAL                         R14 16
      169 GETTABLEKS                       R14 R14 K14 ["useReplicatedState"]
      171 LOADK                            R15 K16 ["CreateGraphContext_SelectedTargetName"]
      172 MOVE                             R16 R12
      173 CALL                             R14 2 0
      174 GETUPVAL                         R14 16
      175 GETTABLEKS                       R14 R14 K17 ["useBoundAction"]
      177 LOADK                            R15 K18 ["CreateGraphContext_CreateNewGraphAsync"]
      178 MOVE                             R16 R9
      179 CALL                             R14 2 0
      180 GETUPVAL                         R14 16
      181 GETTABLEKS                       R14 R14 K17 ["useBoundAction"]
      183 LOADK                            R15 K19 ["CreateGraphContext_CreateGraphFromIdAsync"]
      184 MOVE                             R16 R10
      185 CALL                             R14 2 0
      186 GETUPVAL                         R14 1
      187 GETTABLEKS                       R14 R14 K20 ["createElement"]
      189 GETUPVAL                         R15 17
      190 GETTABLEKS                       R15 R15 K21 ["Provider"]
      192 DUPTABLE                         R16 K23 [{"value"}]
      193 SETTABLEKS                       R13 R16 K22 ["value"]
      195 GETTABLEKS                       R17 R0 K24 ["children"]
      197 CALL                             R14 3 -1
      198 RETURN                           R14 -1

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
       74 GETTABLEKS                       R11 R0 K11 ["Parent"]
       76 GETTABLEKS                       R11 R11 K23 ["ReactUtils"]
       78 CALL                             R10 1 1
       79 GETIMPORT                        R11 K10 [require]
       81 GETTABLEKS                       R12 R0 K13 ["Contexts"]
       83 GETTABLEKS                       R12 R12 K24 ["RigListContext"]
       85 CALL                             R11 1 1
       86 GETIMPORT                        R12 K10 [require]
       88 GETTABLEKS                       R13 R0 K13 ["Contexts"]
       90 GETTABLEKS                       R13 R13 K25 ["SelectedGraphContext"]
       92 CALL                             R12 1 1
       93 GETIMPORT                        R13 K10 [require]
       95 GETTABLEKS                       R14 R0 K13 ["Contexts"]
       97 GETTABLEKS                       R14 R14 K26 ["SelectionServiceContext"]
       99 CALL                             R13 1 1
      100 GETIMPORT                        R14 K10 [require]
      102 GETTABLEKS                       R15 R0 K11 ["Parent"]
      104 GETTABLEKS                       R15 R15 K27 ["Signals"]
      106 CALL                             R14 1 1
      107 GETIMPORT                        R15 K10 [require]
      109 GETTABLEKS                       R16 R0 K18 ["Util"]
      111 GETTABLEKS                       R16 R16 K27 ["Signals"]
      113 GETTABLEKS                       R16 R16 K28 ["SignalsInstanceUtils"]
      115 CALL                             R15 1 1
      116 GETIMPORT                        R16 K10 [require]
      118 GETTABLEKS                       R17 R0 K11 ["Parent"]
      120 GETTABLEKS                       R17 R17 K29 ["SignalsReact"]
      122 CALL                             R16 1 1
      123 GETIMPORT                        R17 K10 [require]
      125 GETTABLEKS                       R18 R0 K18 ["Util"]
      127 GETTABLEKS                       R18 R18 K27 ["Signals"]
      129 GETTABLEKS                       R18 R18 K30 ["TypedInstanceSignals"]
      131 CALL                             R17 1 1
      132 GETIMPORT                        R18 K10 [require]
      134 GETTABLEKS                       R19 R0 K31 ["Flags"]
      136 GETTABLEKS                       R19 R19 K32 ["getFFlagAnimGraphUISortGraphElements"]
      138 CALL                             R18 1 1
      139 GETIMPORT                        R19 K10 [require]
      141 GETTABLEKS                       R20 R0 K31 ["Flags"]
      143 GETTABLEKS                       R20 R20 K33 ["getFFlagAnimGraphUI_RunTimeDebug"]
      145 CALL                             R19 1 1
      146 GETIMPORT                        R20 K10 [require]
      148 GETTABLEKS                       R21 R0 K13 ["Contexts"]
      150 GETTABLEKS                       R21 R21 K34 ["CreateGraphContext"]
      152 GETTABLEKS                       R21 R21 K35 ["insertAnimationClip"]
      154 CALL                             R20 1 1
      155 DUPTABLE                         R21 K42 [{["canCreateGraph"] = False, ["selectedTargetName"] = , ["createGraphFromIdAsync"], ["createNewGraphAsync"]}]
      156 GETTABLEKS                       R22 R10 K43 ["createUnimplemented"]
      158 LOADK                            R23 K40 ["createGraphFromIdAsync"]
      159 CALL                             R22 1 1
      160 SETTABLEKS                       R22 R21 K40 ["createGraphFromIdAsync"]
      162 GETTABLEKS                       R22 R10 K43 ["createUnimplemented"]
      164 LOADK                            R23 K41 ["createNewGraphAsync"]
      165 CALL                             R22 1 1
      166 SETTABLEKS                       R22 R21 K41 ["createNewGraphAsync"]
      168 GETTABLEKS                       R22 R9 K44 ["createContext"]
      170 MOVE                             R23 R21
      171 CALL                             R22 1 1
      172 DUPTABLE                         R23 K49 [{["CAN_CREATE_GRAPH"] = "CreateGraphContext_CanCreateGraph", ["SELECTED_TARGET_NAME"] = "CreateGraphContext_SelectedTargetName"}]
      173 DUPTABLE                         R24 K54 [{["CREATE_NEW_GRAPH"] = "CreateGraphContext_CreateNewGraphAsync", ["CREATE_GRAPH_FROM_ID"] = "CreateGraphContext_CreateGraphFromIdAsync"}]
      174 DUPCLOSURE                       R25 K55 [PROTO_6]
      175 CAPTURE                          VAL R3
      176 CAPTURE                          VAL R9
      177 CAPTURE                          VAL R13
      178 CAPTURE                          VAL R11
      179 CAPTURE                          VAL R5
      180 CAPTURE                          VAL R19
      181 CAPTURE                          VAL R4
      182 CAPTURE                          VAL R12
      183 CAPTURE                          VAL R2
      184 CAPTURE                          VAL R6
      185 CAPTURE                          VAL R18
      186 CAPTURE                          VAL R1
      187 CAPTURE                          VAL R20
      188 CAPTURE                          VAL R15
      189 CAPTURE                          VAL R17
      190 CAPTURE                          VAL R16
      191 CAPTURE                          VAL R7
      192 CAPTURE                          VAL R22
      193 DUPCLOSURE                       R26 K56 [PROTO_8]
      194 CAPTURE                          VAL R19
      195 CAPTURE                          VAL R9
      196 CAPTURE                          VAL R4
      197 CAPTURE                          VAL R7
      198 CAPTURE                          VAL R22
      199 DUPTABLE                         R27 K60 [{"Context", "EditableDataModelProvider", "UIDataModelProvider"}]
      200 SETTABLEKS                       R22 R27 K57 ["Context"]
      202 SETTABLEKS                       R25 R27 K58 ["EditableDataModelProvider"]
      204 SETTABLEKS                       R26 R27 K59 ["UIDataModelProvider"]
      206 RETURN                           R27 1
