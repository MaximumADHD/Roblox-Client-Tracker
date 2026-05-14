PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["selectedRigId"]
        3 JUMPIFNOTEQKNIL                  R1 ; [+2]
        5 LOADB                            R0 0 +1
        6 LOADB                            R0 1
        7 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["observeSelectedRig"]
        3 LOADB                            R1 0
        4 CALL                             R0 1 1
        5 JUMPIFNOTEQKNIL                  R0 ; [+2]
        7 RETURN                           R0 0
        8 GETUPVAL                         R1 1
        9 LOADK                            R3 K1 ["CreateGraphContext.createNewGraphAsync"]
       10 LOADK                            R4 K2 ["Create new graph"]
       11 NAMECALL                         R1 R1 K3 ["TryBeginRecording"]
       13 CALL                             R1 3 1
       14 GETUPVAL                         R2 2
       15 GETTABLEKS                       R2 R2 K4 ["createNewAnimationGraph"]
       17 MOVE                             R3 R0
       18 GETUPVAL                         R4 3
       19 LOADK                            R6 K5 ["Common"]
       20 LOADK                            R7 K6 ["AnimationEditor"]
       21 LOADK                            R8 K7 ["Menu"]
       22 LOADK                            R9 K8 ["GraphDefaultName"]
       23 NAMECALL                         R4 R4 K9 ["getExternalText"]
       25 CALL                             R4 5 -1
       26 CALL                             R2 -1 1
       27 JUMPIFNOT                        R2 ; [+19]
       28 GETUPVAL                         R3 4
       29 CALL                             R3 0 1
       30 JUMPIFNOT                        R3 ; [+5]
       31 GETUPVAL                         R3 5
       32 GETTABLEKS                       R3 R3 K10 ["updateGraphTimestamp"]
       34 MOVE                             R4 R2
       35 CALL                             R3 1 0
       36 GETUPVAL                         R3 6
       37 GETTABLEKS                       R3 R3 K11 ["selectionService"]
       39 NEWTABLE                         R5 0 1
       41 MOVE                             R6 R2
       42 SETLIST                          R5 R6 1 [1]
       44 NAMECALL                         R3 R3 K12 ["Set"]
       46 CALL                             R3 2 0
       47 JUMPIFNOT                        R1 ; [+7]
       48 GETUPVAL                         R3 1
       49 MOVE                             R5 R1
       50 GETIMPORT                        R6 K16 [Enum.FinishRecordingOperation.Commit]
       52 NAMECALL                         R3 R3 K17 ["FinishRecording"]
       54 CALL                             R3 3 0
       55 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["observeSelectedRig"]
        3 LOADB                            R2 0
        4 CALL                             R1 1 1
        5 JUMPIFNOTEQKNIL                  R1 ; [+2]
        7 RETURN                           R0 0
        8 LOADK                            R3 K1 ["rbxassetid://%*"]
        9 MOVE                             R5 R0
       10 NAMECALL                         R3 R3 K2 ["format"]
       12 CALL                             R3 2 1
       13 MOVE                             R2 R3
       14 GETUPVAL                         R3 1
       15 MOVE                             R5 R2
       16 NAMECALL                         R3 R3 K3 ["GetAnimationClipAsync"]
       18 CALL                             R3 2 1
       19 GETUPVAL                         R4 2
       20 MOVE                             R5 R2
       21 MOVE                             R6 R3
       22 MOVE                             R7 R1
       23 GETUPVAL                         R8 3
       24 GETTABLEKS                       R8 R8 K4 ["selectionService"]
       26 CALL                             R4 4 0
       27 RETURN                           R0 0

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
       29 GETUPVAL                         R5 1
       30 GETTABLEKS                       R5 R5 K5 ["useMemo"]
       32 NEWCLOSURE                       R6 P0
       33 CAPTURE                          VAL R3
       34 NEWTABLE                         R7 0 1
       36 GETTABLEKS                       R8 R3 K6 ["selectedRigId"]
       38 SETLIST                          R7 R8 1 [1]
       40 CALL                             R5 2 1
       41 GETUPVAL                         R6 1
       42 GETTABLEKS                       R6 R6 K7 ["useCallback"]
       44 NEWCLOSURE                       R7 P1
       45 CAPTURE                          VAL R3
       46 CAPTURE                          UPVAL U5
       47 CAPTURE                          UPVAL U6
       48 CAPTURE                          VAL R1
       49 CAPTURE                          UPVAL U7
       50 CAPTURE                          VAL R4
       51 CAPTURE                          VAL R2
       52 NEWTABLE                         R8 0 4
       54 GETTABLEKS                       R9 R3 K8 ["observeSelectedRig"]
       56 MOVE                             R10 R1
       57 GETTABLEKS                       R11 R2 K9 ["selectionService"]
       59 GETTABLEKS                       R12 R4 K10 ["updateGraphTimestamp"]
       61 SETLIST                          R8 R9 4 [1]
       63 CALL                             R6 2 1
       64 GETUPVAL                         R7 1
       65 GETTABLEKS                       R7 R7 K7 ["useCallback"]
       67 NEWCLOSURE                       R8 P2
       68 CAPTURE                          VAL R3
       69 CAPTURE                          UPVAL U8
       70 CAPTURE                          UPVAL U9
       71 CAPTURE                          VAL R2
       72 NEWTABLE                         R9 0 3
       74 GETTABLEKS                       R10 R3 K8 ["observeSelectedRig"]
       76 GETUPVAL                         R11 9
       77 GETTABLEKS                       R12 R2 K9 ["selectionService"]
       79 SETLIST                          R9 R10 3 [1]
       81 CALL                             R7 2 1
       82 GETUPVAL                         R8 1
       83 GETTABLEKS                       R8 R8 K5 ["useMemo"]
       85 NEWCLOSURE                       R9 P3
       86 CAPTURE                          UPVAL U10
       87 CAPTURE                          VAL R3
       88 CAPTURE                          UPVAL U11
       89 NEWTABLE                         R10 0 1
       91 GETTABLEKS                       R11 R3 K8 ["observeSelectedRig"]
       93 SETLIST                          R10 R11 1 [1]
       95 CALL                             R8 2 1
       96 GETUPVAL                         R9 12
       97 GETTABLEKS                       R9 R9 K11 ["useSignalState"]
       99 MOVE                             R10 R8
      100 CALL                             R9 1 1
      101 DUPTABLE                         R10 K16 [{"canCreateGraph", "selectedTargetName", "createNewGraphAsync", "createGraphFromIdAsync"}]
      102 SETTABLEKS                       R5 R10 K12 ["canCreateGraph"]
      104 SETTABLEKS                       R9 R10 K13 ["selectedTargetName"]
      106 SETTABLEKS                       R6 R10 K14 ["createNewGraphAsync"]
      108 SETTABLEKS                       R7 R10 K15 ["createGraphFromIdAsync"]
      110 GETUPVAL                         R11 13
      111 GETTABLEKS                       R11 R11 K17 ["useReplicatedState"]
      113 GETUPVAL                         R12 14
      114 GETTABLEKS                       R12 R12 K18 ["CAN_CREATE_GRAPH"]
      116 MOVE                             R13 R5
      117 CALL                             R11 2 0
      118 GETUPVAL                         R11 13
      119 GETTABLEKS                       R11 R11 K17 ["useReplicatedState"]
      121 GETUPVAL                         R12 14
      122 GETTABLEKS                       R12 R12 K19 ["SELECTED_TARGET_NAME"]
      124 MOVE                             R13 R9
      125 CALL                             R11 2 0
      126 GETUPVAL                         R11 13
      127 GETTABLEKS                       R11 R11 K20 ["useBoundAction"]
      129 GETUPVAL                         R12 15
      130 GETTABLEKS                       R12 R12 K21 ["CREATE_NEW_GRAPH"]
      132 MOVE                             R13 R6
      133 CALL                             R11 2 0
      134 GETUPVAL                         R11 13
      135 GETTABLEKS                       R11 R11 K20 ["useBoundAction"]
      137 GETUPVAL                         R12 15
      138 GETTABLEKS                       R12 R12 K22 ["CREATE_GRAPH_FROM_ID"]
      140 MOVE                             R13 R7
      141 CALL                             R11 2 0
      142 GETUPVAL                         R11 1
      143 GETTABLEKS                       R11 R11 K23 ["createElement"]
      145 GETUPVAL                         R12 16
      146 GETTABLEKS                       R12 R12 K24 ["Provider"]
      148 DUPTABLE                         R13 K26 [{"value"}]
      149 SETTABLEKS                       R10 R13 K25 ["value"]
      151 GETTABLEKS                       R14 R0 K27 ["children"]
      153 CALL                             R11 3 -1
      154 RETURN                           R11 -1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useReplicatedStateListener"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["CAN_CREATE_GRAPH"]
        6 LOADB                            R3 0
        7 CALL                             R1 2 1
        8 GETUPVAL                         R2 0
        9 GETTABLEKS                       R2 R2 K0 ["useReplicatedStateListener"]
       11 GETUPVAL                         R3 1
       12 GETTABLEKS                       R3 R3 K2 ["SELECTED_TARGET_NAME"]
       14 LOADNIL                          R4
       15 CALL                             R2 2 1
       16 DUPTABLE                         R3 K7 [{"canCreateGraph", "selectedTargetName", "createNewGraphAsync", "createGraphFromIdAsync"}]
       17 SETTABLEKS                       R1 R3 K3 ["canCreateGraph"]
       19 SETTABLEKS                       R2 R3 K4 ["selectedTargetName"]
       21 GETUPVAL                         R4 0
       22 GETTABLEKS                       R4 R4 K8 ["useBoundAction"]
       24 GETUPVAL                         R5 2
       25 GETTABLEKS                       R5 R5 K9 ["CREATE_NEW_GRAPH"]
       27 CALL                             R4 1 1
       28 SETTABLEKS                       R4 R3 K5 ["createNewGraphAsync"]
       30 GETUPVAL                         R4 0
       31 GETTABLEKS                       R4 R4 K8 ["useBoundAction"]
       33 GETUPVAL                         R5 2
       34 GETTABLEKS                       R5 R5 K10 ["CREATE_GRAPH_FROM_ID"]
       36 CALL                             R4 1 1
       37 SETTABLEKS                       R4 R3 K6 ["createGraphFromIdAsync"]
       39 GETUPVAL                         R4 3
       40 GETTABLEKS                       R4 R4 K11 ["createElement"]
       42 GETUPVAL                         R5 4
       43 GETTABLEKS                       R5 R5 K12 ["Provider"]
       45 DUPTABLE                         R6 K14 [{"value"}]
       46 SETTABLEKS                       R3 R6 K13 ["value"]
       48 GETTABLEKS                       R7 R0 K15 ["children"]
       50 CALL                             R4 3 -1
       51 RETURN                           R4 -1

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
       30 GETTABLEKS                       R5 R5 K14 ["GraphTimestampContext"]
       32 CALL                             R4 1 1
       33 GETIMPORT                        R5 K10 [require]
       35 GETTABLEKS                       R6 R0 K13 ["Contexts"]
       37 GETTABLEKS                       R6 R6 K15 ["NativeGraphContext"]
       39 GETTABLEKS                       R6 R6 K16 ["NativeGraphUtils"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K10 [require]
       44 GETTABLEKS                       R7 R0 K17 ["Util"]
       46 GETTABLEKS                       R7 R7 K18 ["Networking"]
       48 GETTABLEKS                       R7 R7 K19 ["NetworkUtils"]
       50 CALL                             R6 1 1
       51 GETIMPORT                        R7 K10 [require]
       53 GETTABLEKS                       R8 R0 K20 ["NodeViewTypes"]
       55 CALL                             R7 1 1
       56 GETIMPORT                        R8 K10 [require]
       58 GETTABLEKS                       R9 R0 K11 ["Parent"]
       60 GETTABLEKS                       R9 R9 K21 ["React"]
       62 CALL                             R8 1 1
       63 GETIMPORT                        R9 K10 [require]
       65 GETTABLEKS                       R10 R0 K11 ["Parent"]
       67 GETTABLEKS                       R10 R10 K22 ["ReactUtils"]
       69 CALL                             R9 1 1
       70 GETIMPORT                        R10 K10 [require]
       72 GETTABLEKS                       R11 R0 K13 ["Contexts"]
       74 GETTABLEKS                       R11 R11 K23 ["RigListContext"]
       76 CALL                             R10 1 1
       77 GETIMPORT                        R11 K10 [require]
       79 GETTABLEKS                       R12 R0 K13 ["Contexts"]
       81 GETTABLEKS                       R12 R12 K24 ["SelectionServiceContext"]
       83 CALL                             R11 1 1
       84 GETIMPORT                        R12 K10 [require]
       86 GETTABLEKS                       R13 R0 K11 ["Parent"]
       88 GETTABLEKS                       R13 R13 K25 ["Signals"]
       90 CALL                             R12 1 1
       91 GETIMPORT                        R13 K10 [require]
       93 GETTABLEKS                       R14 R0 K17 ["Util"]
       95 GETTABLEKS                       R14 R14 K25 ["Signals"]
       97 GETTABLEKS                       R14 R14 K26 ["SignalsInstanceUtils"]
       99 CALL                             R13 1 1
      100 GETIMPORT                        R14 K10 [require]
      102 GETTABLEKS                       R15 R0 K11 ["Parent"]
      104 GETTABLEKS                       R15 R15 K27 ["SignalsReact"]
      106 CALL                             R14 1 1
      107 GETIMPORT                        R15 K10 [require]
      109 GETTABLEKS                       R16 R0 K17 ["Util"]
      111 GETTABLEKS                       R16 R16 K25 ["Signals"]
      113 GETTABLEKS                       R16 R16 K28 ["TypedInstanceSignals"]
      115 CALL                             R15 1 1
      116 GETIMPORT                        R16 K10 [require]
      118 GETTABLEKS                       R17 R0 K13 ["Contexts"]
      120 GETTABLEKS                       R17 R17 K29 ["CreateGraphContext"]
      122 GETTABLEKS                       R17 R17 K30 ["insertAnimationClip"]
      124 CALL                             R16 1 1
      125 GETIMPORT                        R17 K10 [require]
      127 GETTABLEKS                       R18 R0 K31 ["Flags"]
      129 GETTABLEKS                       R18 R18 K32 ["getFFlagAnimGraphUISortGraphElements"]
      131 CALL                             R17 1 1
      132 DUPTABLE                         R18 K37 [{"canCreateGraph", "selectedTargetName", "createGraphFromIdAsync", "createNewGraphAsync"}]
      133 LOADB                            R19 0
      134 SETTABLEKS                       R19 R18 K33 ["canCreateGraph"]
      136 LOADNIL                          R19
      137 SETTABLEKS                       R19 R18 K34 ["selectedTargetName"]
      139 GETTABLEKS                       R19 R9 K38 ["createUnimplemented"]
      141 LOADK                            R20 K35 ["createGraphFromIdAsync"]
      142 CALL                             R19 1 1
      143 SETTABLEKS                       R19 R18 K35 ["createGraphFromIdAsync"]
      145 GETTABLEKS                       R19 R9 K38 ["createUnimplemented"]
      147 LOADK                            R20 K36 ["createNewGraphAsync"]
      148 CALL                             R19 1 1
      149 SETTABLEKS                       R19 R18 K36 ["createNewGraphAsync"]
      151 GETTABLEKS                       R19 R8 K39 ["createContext"]
      153 MOVE                             R20 R18
      154 CALL                             R19 1 1
      155 DUPTABLE                         R20 K42 [{"CAN_CREATE_GRAPH", "SELECTED_TARGET_NAME"}]
      156 LOADK                            R21 K43 ["CreateGraphContext_CanCreateGraph"]
      157 SETTABLEKS                       R21 R20 K40 ["CAN_CREATE_GRAPH"]
      159 LOADK                            R21 K44 ["CreateGraphContext_SelectedTargetName"]
      160 SETTABLEKS                       R21 R20 K41 ["SELECTED_TARGET_NAME"]
      162 DUPTABLE                         R21 K47 [{"CREATE_NEW_GRAPH", "CREATE_GRAPH_FROM_ID"}]
      163 LOADK                            R22 K48 ["CreateGraphContext_CreateNewGraphAsync"]
      164 SETTABLEKS                       R22 R21 K45 ["CREATE_NEW_GRAPH"]
      166 LOADK                            R22 K49 ["CreateGraphContext_CreateGraphFromIdAsync"]
      167 SETTABLEKS                       R22 R21 K46 ["CREATE_GRAPH_FROM_ID"]
      169 DUPCLOSURE                       R22 K50 [PROTO_5]
      170 CAPTURE                          VAL R3
      171 CAPTURE                          VAL R8
      172 CAPTURE                          VAL R11
      173 CAPTURE                          VAL R10
      174 CAPTURE                          VAL R4
      175 CAPTURE                          VAL R2
      176 CAPTURE                          VAL R5
      177 CAPTURE                          VAL R17
      178 CAPTURE                          VAL R1
      179 CAPTURE                          VAL R16
      180 CAPTURE                          VAL R13
      181 CAPTURE                          VAL R15
      182 CAPTURE                          VAL R14
      183 CAPTURE                          VAL R6
      184 CAPTURE                          VAL R20
      185 CAPTURE                          VAL R21
      186 CAPTURE                          VAL R19
      187 DUPCLOSURE                       R23 K51 [PROTO_6]
      188 CAPTURE                          VAL R6
      189 CAPTURE                          VAL R20
      190 CAPTURE                          VAL R21
      191 CAPTURE                          VAL R8
      192 CAPTURE                          VAL R19
      193 DUPTABLE                         R24 K55 [{"Context", "EditableDataModelProvider", "UIDataModelProvider"}]
      194 SETTABLEKS                       R19 R24 K52 ["Context"]
      196 SETTABLEKS                       R22 R24 K53 ["EditableDataModelProvider"]
      198 SETTABLEKS                       R23 R24 K54 ["UIDataModelProvider"]
      200 RETURN                           R24 1
