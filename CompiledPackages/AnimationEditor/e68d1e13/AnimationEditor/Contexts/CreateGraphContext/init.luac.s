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
       65 JUMPIFNOT                        R2 ; [+6]
       66 GETUPVAL                         R3 8
       67 MOVE                             R5 R2
       68 NAMECALL                         R3 R3 K19 ["instanceToId"]
       70 CALL                             R3 2 1
       71 RETURN                           R3 1
       72 LOADNIL                          R3
       73 RETURN                           R3 1

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
       15 GETTABLEKS                       R2 R2 K5 ["instanceRegistry"]
       17 GETUPVAL                         R3 1
       18 GETTABLEKS                       R3 R3 K3 ["useContext"]
       20 GETUPVAL                         R4 3
       21 GETTABLEKS                       R4 R4 K4 ["Context"]
       23 CALL                             R3 1 1
       24 GETUPVAL                         R4 1
       25 GETTABLEKS                       R4 R4 K3 ["useContext"]
       27 GETUPVAL                         R5 4
       28 GETTABLEKS                       R5 R5 K4 ["Context"]
       30 CALL                             R4 1 1
       31 GETUPVAL                         R5 1
       32 GETTABLEKS                       R5 R5 K3 ["useContext"]
       34 GETUPVAL                         R6 5
       35 GETTABLEKS                       R6 R6 K4 ["Context"]
       37 CALL                             R5 1 1
       38 GETUPVAL                         R7 6
       39 CALL                             R7 0 1
       40 JUMPIFNOT                        R7 ; [+8]
       41 GETUPVAL                         R6 1
       42 GETTABLEKS                       R6 R6 K3 ["useContext"]
       44 GETUPVAL                         R7 7
       45 GETTABLEKS                       R7 R7 K4 ["Context"]
       47 CALL                             R6 1 1
       48 JUMP                             ; [+1]
       49 LOADNIL                          R6
       50 GETUPVAL                         R8 6
       51 CALL                             R8 0 1
       52 JUMPIFNOT                        R8 ; [+8]
       53 GETUPVAL                         R7 1
       54 GETTABLEKS                       R7 R7 K3 ["useContext"]
       56 GETUPVAL                         R8 8
       57 GETTABLEKS                       R8 R8 K4 ["Context"]
       59 CALL                             R7 1 1
       60 JUMP                             ; [+1]
       61 LOADNIL                          R7
       62 GETUPVAL                         R9 6
       63 CALL                             R9 0 1
       64 JUMPIFNOT                        R9 ; [+3]
       65 GETTABLEKS                       R8 R6 K6 ["isPreviewRunning"]
       67 JUMP                             ; [+1]
       68 LOADNIL                          R8
       69 GETUPVAL                         R9 1
       70 GETTABLEKS                       R9 R9 K7 ["useMemo"]
       72 NEWCLOSURE                       R10 P0
       73 CAPTURE                          UPVAL U6
       74 CAPTURE                          VAL R8
       75 CAPTURE                          VAL R4
       76 NEWTABLE                         R11 0 2
       78 GETTABLEKS                       R12 R4 K8 ["selectedRigId"]
       80 MOVE                             R13 R8
       81 SETLIST                          R11 R12 2 [1]
       83 CALL                             R9 2 1
       84 GETUPVAL                         R10 1
       85 GETTABLEKS                       R10 R10 K9 ["useCallback"]
       87 NEWCLOSURE                       R11 P1
       88 CAPTURE                          VAL R4
       89 CAPTURE                          UPVAL U6
       90 CAPTURE                          UPVAL U9
       91 CAPTURE                          UPVAL U10
       92 CAPTURE                          VAL R1
       93 CAPTURE                          VAL R5
       94 CAPTURE                          VAL R7
       95 CAPTURE                          VAL R3
       96 CAPTURE                          VAL R2
       97 NEWTABLE                         R12 0 6
       99 GETTABLEKS                       R13 R4 K10 ["observeSelectedRig"]
      101 MOVE                             R14 R1
      102 GETTABLEKS                       R15 R3 K11 ["selectionService"]
      104 GETTABLEKS                       R16 R5 K12 ["updateGraphTimestamp"]
      106 GETUPVAL                         R18 6
      107 CALL                             R18 0 1
      108 JUMPIFNOT                        R18 ; [+3]
      109 GETTABLEKS                       R17 R7 K13 ["setSelectedGraphInstance"]
      111 JUMP                             ; [+1]
      112 LOADNIL                          R17
      113 MOVE                             R18 R2
      114 SETLIST                          R12 R13 6 [1]
      116 CALL                             R10 2 1
      117 GETUPVAL                         R11 1
      118 GETTABLEKS                       R11 R11 K9 ["useCallback"]
      120 NEWCLOSURE                       R12 P2
      121 CAPTURE                          VAL R4
      122 CAPTURE                          UPVAL U6
      123 CAPTURE                          UPVAL U11
      124 CAPTURE                          UPVAL U12
      125 CAPTURE                          VAL R3
      126 NEWTABLE                         R13 0 3
      128 GETTABLEKS                       R14 R4 K10 ["observeSelectedRig"]
      130 GETUPVAL                         R15 12
      131 GETTABLEKS                       R16 R3 K11 ["selectionService"]
      133 SETLIST                          R13 R14 3 [1]
      135 CALL                             R11 2 1
      136 GETUPVAL                         R12 1
      137 GETTABLEKS                       R12 R12 K7 ["useMemo"]
      139 NEWCLOSURE                       R13 P3
      140 CAPTURE                          UPVAL U13
      141 CAPTURE                          VAL R4
      142 CAPTURE                          UPVAL U14
      143 NEWTABLE                         R14 0 1
      145 GETTABLEKS                       R15 R4 K10 ["observeSelectedRig"]
      147 SETLIST                          R14 R15 1 [1]
      149 CALL                             R12 2 1
      150 GETUPVAL                         R13 15
      151 GETTABLEKS                       R13 R13 K14 ["useSignalState"]
      153 MOVE                             R14 R12
      154 CALL                             R13 1 1
      155 GETUPVAL                         R14 1
      156 GETTABLEKS                       R14 R14 K7 ["useMemo"]
      158 NEWCLOSURE                       R15 P4
      159 CAPTURE                          VAL R9
      160 CAPTURE                          VAL R13
      161 CAPTURE                          VAL R10
      162 CAPTURE                          VAL R11
      163 NEWTABLE                         R16 0 4
      165 MOVE                             R17 R9
      166 MOVE                             R18 R13
      167 MOVE                             R19 R10
      168 MOVE                             R20 R11
      169 SETLIST                          R16 R17 4 [1]
      171 CALL                             R14 2 1
      172 GETUPVAL                         R15 16
      173 GETTABLEKS                       R15 R15 K15 ["useReplicatedState"]
      175 LOADK                            R16 K16 ["CreateGraphContext_CanCreateGraph"]
      176 MOVE                             R17 R9
      177 CALL                             R15 2 0
      178 GETUPVAL                         R15 16
      179 GETTABLEKS                       R15 R15 K15 ["useReplicatedState"]
      181 LOADK                            R16 K17 ["CreateGraphContext_SelectedTargetName"]
      182 MOVE                             R17 R13
      183 CALL                             R15 2 0
      184 GETUPVAL                         R15 16
      185 GETTABLEKS                       R15 R15 K18 ["useBoundAction"]
      187 LOADK                            R16 K19 ["CreateGraphContext_CreateNewGraphAsync"]
      188 MOVE                             R17 R10
      189 CALL                             R15 2 0
      190 GETUPVAL                         R15 16
      191 GETTABLEKS                       R15 R15 K18 ["useBoundAction"]
      193 LOADK                            R16 K20 ["CreateGraphContext_CreateGraphFromIdAsync"]
      194 MOVE                             R17 R11
      195 CALL                             R15 2 0
      196 GETUPVAL                         R15 1
      197 GETTABLEKS                       R15 R15 K21 ["createElement"]
      199 GETUPVAL                         R16 17
      200 GETTABLEKS                       R16 R16 K22 ["Provider"]
      202 DUPTABLE                         R17 K24 [{"value"}]
      203 SETTABLEKS                       R14 R17 K23 ["value"]
      205 GETTABLEKS                       R18 R0 K25 ["children"]
      207 CALL                             R15 3 -1
      208 RETURN                           R15 -1

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
       44 GETTABLEKS                       R7 R7 K16 ["InstanceRegistryContext"]
       46 CALL                             R6 1 1
       47 GETIMPORT                        R7 K10 [require]
       49 GETTABLEKS                       R8 R0 K13 ["Contexts"]
       51 GETTABLEKS                       R8 R8 K17 ["NativeGraphContext"]
       53 GETTABLEKS                       R8 R8 K18 ["NativeGraphUtils"]
       55 CALL                             R7 1 1
       56 GETIMPORT                        R8 K10 [require]
       58 GETTABLEKS                       R9 R0 K19 ["Util"]
       60 GETTABLEKS                       R9 R9 K20 ["Networking"]
       62 GETTABLEKS                       R9 R9 K21 ["NetworkUtils"]
       64 CALL                             R8 1 1
       65 GETIMPORT                        R9 K10 [require]
       67 GETTABLEKS                       R10 R0 K11 ["Parent"]
       69 GETTABLEKS                       R10 R10 K22 ["NodeGraphing"]
       71 CALL                             R9 1 1
       72 GETIMPORT                        R10 K10 [require]
       74 GETTABLEKS                       R11 R0 K11 ["Parent"]
       76 GETTABLEKS                       R11 R11 K23 ["React"]
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
      109 GETTABLEKS                       R16 R0 K19 ["Util"]
      111 GETTABLEKS                       R16 R16 K27 ["Signals"]
      113 GETTABLEKS                       R16 R16 K28 ["SignalsInstanceUtils"]
      115 CALL                             R15 1 1
      116 GETIMPORT                        R16 K10 [require]
      118 GETTABLEKS                       R17 R0 K11 ["Parent"]
      120 GETTABLEKS                       R17 R17 K29 ["SignalsReact"]
      122 CALL                             R16 1 1
      123 GETIMPORT                        R17 K10 [require]
      125 GETTABLEKS                       R18 R0 K19 ["Util"]
      127 GETTABLEKS                       R18 R18 K27 ["Signals"]
      129 GETTABLEKS                       R18 R18 K30 ["TypedInstanceSignals"]
      131 CALL                             R17 1 1
      132 GETIMPORT                        R18 K10 [require]
      134 GETTABLEKS                       R19 R0 K13 ["Contexts"]
      136 GETTABLEKS                       R19 R19 K31 ["CreateGraphContext"]
      138 GETTABLEKS                       R19 R19 K32 ["ContextDefinition"]
      140 CALL                             R18 1 1
      141 GETIMPORT                        R19 K10 [require]
      143 GETTABLEKS                       R20 R0 K33 ["Flags"]
      145 GETTABLEKS                       R20 R20 K34 ["getFFlagAnimGraphUI_RunTimeDebug"]
      147 CALL                             R19 1 1
      148 GETIMPORT                        R20 K10 [require]
      150 GETTABLEKS                       R21 R0 K13 ["Contexts"]
      152 GETTABLEKS                       R21 R21 K31 ["CreateGraphContext"]
      154 GETTABLEKS                       R21 R21 K35 ["insertAnimationClip"]
      156 CALL                             R20 1 1
      157 GETTABLEKS                       R21 R18 K36 ["Context"]
      159 DUPTABLE                         R22 K41 [{["CAN_CREATE_GRAPH"] = "CreateGraphContext_CanCreateGraph", ["SELECTED_TARGET_NAME"] = "CreateGraphContext_SelectedTargetName"}]
      160 DUPTABLE                         R23 K46 [{["CREATE_NEW_GRAPH"] = "CreateGraphContext_CreateNewGraphAsync", ["CREATE_GRAPH_FROM_ID"] = "CreateGraphContext_CreateGraphFromIdAsync"}]
      161 DUPCLOSURE                       R24 K47 [PROTO_6]
      162 CAPTURE                          VAL R3
      163 CAPTURE                          VAL R10
      164 CAPTURE                          VAL R6
      165 CAPTURE                          VAL R13
      166 CAPTURE                          VAL R11
      167 CAPTURE                          VAL R5
      168 CAPTURE                          VAL R19
      169 CAPTURE                          VAL R4
      170 CAPTURE                          VAL R12
      171 CAPTURE                          VAL R2
      172 CAPTURE                          VAL R7
      173 CAPTURE                          VAL R1
      174 CAPTURE                          VAL R20
      175 CAPTURE                          VAL R15
      176 CAPTURE                          VAL R17
      177 CAPTURE                          VAL R16
      178 CAPTURE                          VAL R8
      179 CAPTURE                          VAL R21
      180 DUPCLOSURE                       R25 K48 [PROTO_8]
      181 CAPTURE                          VAL R19
      182 CAPTURE                          VAL R10
      183 CAPTURE                          VAL R4
      184 CAPTURE                          VAL R8
      185 CAPTURE                          VAL R21
      186 DUPTABLE                         R26 K51 [{"Context", "EditableDataModelProvider", "UIDataModelProvider"}]
      187 SETTABLEKS                       R21 R26 K36 ["Context"]
      189 SETTABLEKS                       R24 R26 K49 ["EditableDataModelProvider"]
      191 SETTABLEKS                       R25 R26 K50 ["UIDataModelProvider"]
      193 RETURN                           R26 1
