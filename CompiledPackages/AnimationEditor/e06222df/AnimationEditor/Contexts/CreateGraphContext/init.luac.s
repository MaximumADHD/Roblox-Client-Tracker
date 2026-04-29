PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["selectedRigId"]
        3 JUMPIFNOTEQKNIL                  R1 ; [+2]
        5 LOADB                            R0 0 +1
        6 LOADB                            R0 1
        7 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["observeSelectedRig"]
        3 LOADB                            R1 0
        4 CALL                             R0 1 1
        5 JUMPIFNOTEQKNIL                  R0 ; [+2]
        7 RETURN                           R0 0
        8 GETUPVAL                         R1 1
        9 LOADK                            R3 K1 ["CreateGraphContext.createNewGraphAsync"]
       10 LOADK                            R4 K2 ["Create new graph"]
       11 NAMECALL                         R1 R1 K3 ["TryBeginRecording"]
       13 CALL                             R1 3 1
       14 GETUPVAL                         R3 2
       15 GETTABLEKS                       R2 R3 K4 ["createNewAnimationGraph"]
       17 MOVE                             R3 R0
       18 GETUPVAL                         R4 3
       19 LOADK                            R6 K5 ["Common"]
       20 LOADK                            R7 K6 ["AnimationEditor"]
       21 LOADK                            R8 K7 ["Menu"]
       22 LOADK                            R9 K8 ["GraphDefaultName"]
       23 NAMECALL                         R4 R4 K9 ["getExternalText"]
       25 CALL                             R4 5 -1
       26 CALL                             R2 -1 1
       27 JUMPIFNOT                        R2 ; [+11]
       28 GETUPVAL                         R4 4
       29 GETTABLEKS                       R3 R4 K10 ["selectionService"]
       31 NEWTABLE                         R5 0 1
       33 MOVE                             R6 R2
       34 SETLIST                          R5 R6 1 [1]
       36 NAMECALL                         R3 R3 K11 ["Set"]
       38 CALL                             R3 2 0
       39 JUMPIFNOT                        R1 ; [+7]
       40 GETUPVAL                         R3 1
       41 MOVE                             R5 R1
       42 GETIMPORT                        R6 K15 [Enum.FinishRecordingOperation.Commit]
       44 NAMECALL                         R3 R3 K16 ["FinishRecording"]
       46 CALL                             R3 3 0
       47 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["observeSelectedRig"]
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
       23 GETUPVAL                         R9 3
       24 GETTABLEKS                       R8 R9 K4 ["selectionService"]
       26 CALL                             R4 4 0
       27 RETURN                           R0 0

PROTO_3:
        0 JUMPIFNOTEQKNIL                  R0 ; [+7]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R1 R2 K0 ["of"]
        5 LOADNIL                          R2
        6 CALL                             R1 1 -1
        7 RETURN                           R1 -1
        8 GETUPVAL                         R3 1
        9 GETTABLEKS                       R2 R3 K1 ["properties"]
       11 GETTABLEKS                       R1 R2 K2 ["observeString"]
       13 MOVE                             R2 R0
       14 LOADK                            R3 K3 ["Name"]
       15 CALL                             R1 2 -1
       16 RETURN                           R1 -1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["switchMap"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R1 R2 K1 ["observeSelectedRig"]
        6 DUPCLOSURE                       R2 K2 [PROTO_3]
        7 CAPTURE                          UPVAL U0
        8 CAPTURE                          UPVAL U2
        9 CALL                             R0 2 -1
       10 RETURN                           R0 -1

PROTO_5:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["ContextServices"]
        3 GETTABLEKS                       R1 R2 K1 ["Localization"]
        5 NAMECALL                         R1 R1 K2 ["use"]
        7 CALL                             R1 1 1
        8 GETUPVAL                         R3 1
        9 GETTABLEKS                       R2 R3 K3 ["useContext"]
       11 GETUPVAL                         R4 2
       12 GETTABLEKS                       R3 R4 K4 ["Context"]
       14 CALL                             R2 1 1
       15 GETUPVAL                         R4 1
       16 GETTABLEKS                       R3 R4 K3 ["useContext"]
       18 GETUPVAL                         R5 3
       19 GETTABLEKS                       R4 R5 K4 ["Context"]
       21 CALL                             R3 1 1
       22 GETUPVAL                         R5 1
       23 GETTABLEKS                       R4 R5 K5 ["useMemo"]
       25 NEWCLOSURE                       R5 P0
       26 CAPTURE                          VAL R3
       27 NEWTABLE                         R6 0 1
       29 GETTABLEKS                       R7 R3 K6 ["selectedRigId"]
       31 SETLIST                          R6 R7 1 [1]
       33 CALL                             R4 2 1
       34 GETUPVAL                         R6 1
       35 GETTABLEKS                       R5 R6 K7 ["useCallback"]
       37 NEWCLOSURE                       R6 P1
       38 CAPTURE                          VAL R3
       39 CAPTURE                          UPVAL U4
       40 CAPTURE                          UPVAL U5
       41 CAPTURE                          VAL R1
       42 CAPTURE                          VAL R2
       43 NEWTABLE                         R7 0 3
       45 GETTABLEKS                       R8 R3 K8 ["observeSelectedRig"]
       47 MOVE                             R9 R1
       48 GETTABLEKS                       R10 R2 K9 ["selectionService"]
       50 SETLIST                          R7 R8 3 [1]
       52 CALL                             R5 2 1
       53 GETUPVAL                         R7 1
       54 GETTABLEKS                       R6 R7 K7 ["useCallback"]
       56 NEWCLOSURE                       R7 P2
       57 CAPTURE                          VAL R3
       58 CAPTURE                          UPVAL U6
       59 CAPTURE                          UPVAL U7
       60 CAPTURE                          VAL R2
       61 NEWTABLE                         R8 0 3
       63 GETTABLEKS                       R9 R3 K8 ["observeSelectedRig"]
       65 GETUPVAL                         R10 7
       66 GETTABLEKS                       R11 R2 K9 ["selectionService"]
       68 SETLIST                          R8 R9 3 [1]
       70 CALL                             R6 2 1
       71 GETUPVAL                         R8 1
       72 GETTABLEKS                       R7 R8 K5 ["useMemo"]
       74 NEWCLOSURE                       R8 P3
       75 CAPTURE                          UPVAL U8
       76 CAPTURE                          VAL R3
       77 CAPTURE                          UPVAL U9
       78 NEWTABLE                         R9 0 1
       80 GETTABLEKS                       R10 R3 K8 ["observeSelectedRig"]
       82 SETLIST                          R9 R10 1 [1]
       84 CALL                             R7 2 1
       85 GETUPVAL                         R9 10
       86 GETTABLEKS                       R8 R9 K10 ["useSignalState"]
       88 MOVE                             R9 R7
       89 CALL                             R8 1 1
       90 DUPTABLE                         R9 K15 [{"canCreateGraph", "selectedTargetName", "createNewGraphAsync", "createGraphFromIdAsync"}]
       91 SETTABLEKS                       R4 R9 K11 ["canCreateGraph"]
       93 SETTABLEKS                       R8 R9 K12 ["selectedTargetName"]
       95 SETTABLEKS                       R5 R9 K13 ["createNewGraphAsync"]
       97 SETTABLEKS                       R6 R9 K14 ["createGraphFromIdAsync"]
       99 GETUPVAL                         R11 11
      100 GETTABLEKS                       R10 R11 K16 ["useReplicatedState"]
      102 GETUPVAL                         R12 12
      103 GETTABLEKS                       R11 R12 K17 ["CAN_CREATE_GRAPH"]
      105 MOVE                             R12 R4
      106 CALL                             R10 2 0
      107 GETUPVAL                         R11 11
      108 GETTABLEKS                       R10 R11 K16 ["useReplicatedState"]
      110 GETUPVAL                         R12 12
      111 GETTABLEKS                       R11 R12 K18 ["SELECTED_TARGET_NAME"]
      113 MOVE                             R12 R8
      114 CALL                             R10 2 0
      115 GETUPVAL                         R11 11
      116 GETTABLEKS                       R10 R11 K19 ["useBoundAction"]
      118 GETUPVAL                         R12 13
      119 GETTABLEKS                       R11 R12 K20 ["CREATE_NEW_GRAPH"]
      121 MOVE                             R12 R5
      122 CALL                             R10 2 0
      123 GETUPVAL                         R11 11
      124 GETTABLEKS                       R10 R11 K19 ["useBoundAction"]
      126 GETUPVAL                         R12 13
      127 GETTABLEKS                       R11 R12 K21 ["CREATE_GRAPH_FROM_ID"]
      129 MOVE                             R12 R6
      130 CALL                             R10 2 0
      131 GETUPVAL                         R11 1
      132 GETTABLEKS                       R10 R11 K22 ["createElement"]
      134 GETUPVAL                         R12 14
      135 GETTABLEKS                       R11 R12 K23 ["Provider"]
      137 DUPTABLE                         R12 K25 [{"value"}]
      138 SETTABLEKS                       R9 R12 K24 ["value"]
      140 GETTABLEKS                       R13 R0 K26 ["children"]
      142 CALL                             R10 3 -1
      143 RETURN                           R10 -1

PROTO_6:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useReplicatedStateListener"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R2 R3 K1 ["CAN_CREATE_GRAPH"]
        6 LOADB                            R3 0
        7 CALL                             R1 2 1
        8 GETUPVAL                         R3 0
        9 GETTABLEKS                       R2 R3 K0 ["useReplicatedStateListener"]
       11 GETUPVAL                         R4 1
       12 GETTABLEKS                       R3 R4 K2 ["SELECTED_TARGET_NAME"]
       14 LOADNIL                          R4
       15 CALL                             R2 2 1
       16 DUPTABLE                         R3 K7 [{"canCreateGraph", "selectedTargetName", "createNewGraphAsync", "createGraphFromIdAsync"}]
       17 SETTABLEKS                       R1 R3 K3 ["canCreateGraph"]
       19 SETTABLEKS                       R2 R3 K4 ["selectedTargetName"]
       21 GETUPVAL                         R5 0
       22 GETTABLEKS                       R4 R5 K8 ["useBoundAction"]
       24 GETUPVAL                         R6 2
       25 GETTABLEKS                       R5 R6 K9 ["CREATE_NEW_GRAPH"]
       27 CALL                             R4 1 1
       28 SETTABLEKS                       R4 R3 K5 ["createNewGraphAsync"]
       30 GETUPVAL                         R5 0
       31 GETTABLEKS                       R4 R5 K8 ["useBoundAction"]
       33 GETUPVAL                         R6 2
       34 GETTABLEKS                       R5 R6 K10 ["CREATE_GRAPH_FROM_ID"]
       36 CALL                             R4 1 1
       37 SETTABLEKS                       R4 R3 K6 ["createGraphFromIdAsync"]
       39 GETUPVAL                         R5 3
       40 GETTABLEKS                       R4 R5 K11 ["createElement"]
       42 GETUPVAL                         R6 4
       43 GETTABLEKS                       R5 R6 K12 ["Provider"]
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
       21 GETTABLEKS                       R5 R0 K11 ["Parent"]
       23 GETTABLEKS                       R4 R5 K12 ["Framework"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K10 [require]
       28 GETTABLEKS                       R7 R0 K13 ["Contexts"]
       30 GETTABLEKS                       R6 R7 K14 ["NativeGraphContext"]
       32 GETTABLEKS                       R5 R6 K15 ["NativeGraphUtils"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K10 [require]
       37 GETTABLEKS                       R8 R0 K16 ["Util"]
       39 GETTABLEKS                       R7 R8 K17 ["Networking"]
       41 GETTABLEKS                       R6 R7 K18 ["NetworkUtils"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K10 [require]
       46 GETTABLEKS                       R7 R0 K19 ["NodeViewTypes"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K10 [require]
       51 GETTABLEKS                       R9 R0 K11 ["Parent"]
       53 GETTABLEKS                       R8 R9 K20 ["React"]
       55 CALL                             R7 1 1
       56 GETIMPORT                        R8 K10 [require]
       58 GETTABLEKS                       R10 R0 K11 ["Parent"]
       60 GETTABLEKS                       R9 R10 K21 ["ReactUtils"]
       62 CALL                             R8 1 1
       63 GETIMPORT                        R9 K10 [require]
       65 GETTABLEKS                       R11 R0 K13 ["Contexts"]
       67 GETTABLEKS                       R10 R11 K22 ["RigListContext"]
       69 CALL                             R9 1 1
       70 GETIMPORT                        R10 K10 [require]
       72 GETTABLEKS                       R12 R0 K13 ["Contexts"]
       74 GETTABLEKS                       R11 R12 K23 ["SelectionServiceContext"]
       76 CALL                             R10 1 1
       77 GETIMPORT                        R11 K10 [require]
       79 GETTABLEKS                       R13 R0 K11 ["Parent"]
       81 GETTABLEKS                       R12 R13 K24 ["Signals"]
       83 CALL                             R11 1 1
       84 GETIMPORT                        R12 K10 [require]
       86 GETTABLEKS                       R15 R0 K16 ["Util"]
       88 GETTABLEKS                       R14 R15 K24 ["Signals"]
       90 GETTABLEKS                       R13 R14 K25 ["SignalsInstanceUtils"]
       92 CALL                             R12 1 1
       93 GETIMPORT                        R13 K10 [require]
       95 GETTABLEKS                       R15 R0 K11 ["Parent"]
       97 GETTABLEKS                       R14 R15 K26 ["SignalsReact"]
       99 CALL                             R13 1 1
      100 GETIMPORT                        R14 K10 [require]
      102 GETTABLEKS                       R17 R0 K16 ["Util"]
      104 GETTABLEKS                       R16 R17 K24 ["Signals"]
      106 GETTABLEKS                       R15 R16 K27 ["TypedInstanceSignals"]
      108 CALL                             R14 1 1
      109 GETIMPORT                        R15 K10 [require]
      111 GETTABLEKS                       R18 R0 K13 ["Contexts"]
      113 GETTABLEKS                       R17 R18 K28 ["CreateGraphContext"]
      115 GETTABLEKS                       R16 R17 K29 ["insertAnimationClip"]
      117 CALL                             R15 1 1
      118 DUPTABLE                         R16 K34 [{"canCreateGraph", "selectedTargetName", "createGraphFromIdAsync", "createNewGraphAsync"}]
      119 LOADB                            R17 0
      120 SETTABLEKS                       R17 R16 K30 ["canCreateGraph"]
      122 LOADNIL                          R17
      123 SETTABLEKS                       R17 R16 K31 ["selectedTargetName"]
      125 GETTABLEKS                       R17 R8 K35 ["createUnimplemented"]
      127 LOADK                            R18 K32 ["createGraphFromIdAsync"]
      128 CALL                             R17 1 1
      129 SETTABLEKS                       R17 R16 K32 ["createGraphFromIdAsync"]
      131 GETTABLEKS                       R17 R8 K35 ["createUnimplemented"]
      133 LOADK                            R18 K33 ["createNewGraphAsync"]
      134 CALL                             R17 1 1
      135 SETTABLEKS                       R17 R16 K33 ["createNewGraphAsync"]
      137 GETTABLEKS                       R17 R7 K36 ["createContext"]
      139 MOVE                             R18 R16
      140 CALL                             R17 1 1
      141 DUPTABLE                         R18 K39 [{"CAN_CREATE_GRAPH", "SELECTED_TARGET_NAME"}]
      142 LOADK                            R19 K40 ["CreateGraphContext_CanCreateGraph"]
      143 SETTABLEKS                       R19 R18 K37 ["CAN_CREATE_GRAPH"]
      145 LOADK                            R19 K41 ["CreateGraphContext_SelectedTargetName"]
      146 SETTABLEKS                       R19 R18 K38 ["SELECTED_TARGET_NAME"]
      148 DUPTABLE                         R19 K44 [{"CREATE_NEW_GRAPH", "CREATE_GRAPH_FROM_ID"}]
      149 LOADK                            R20 K45 ["CreateGraphContext_CreateNewGraphAsync"]
      150 SETTABLEKS                       R20 R19 K42 ["CREATE_NEW_GRAPH"]
      152 LOADK                            R20 K46 ["CreateGraphContext_CreateGraphFromIdAsync"]
      153 SETTABLEKS                       R20 R19 K43 ["CREATE_GRAPH_FROM_ID"]
      155 DUPCLOSURE                       R20 K47 [PROTO_5]
      156 CAPTURE                          VAL R3
      157 CAPTURE                          VAL R7
      158 CAPTURE                          VAL R10
      159 CAPTURE                          VAL R9
      160 CAPTURE                          VAL R2
      161 CAPTURE                          VAL R4
      162 CAPTURE                          VAL R1
      163 CAPTURE                          VAL R15
      164 CAPTURE                          VAL R12
      165 CAPTURE                          VAL R14
      166 CAPTURE                          VAL R13
      167 CAPTURE                          VAL R5
      168 CAPTURE                          VAL R18
      169 CAPTURE                          VAL R19
      170 CAPTURE                          VAL R17
      171 DUPCLOSURE                       R21 K48 [PROTO_6]
      172 CAPTURE                          VAL R5
      173 CAPTURE                          VAL R18
      174 CAPTURE                          VAL R19
      175 CAPTURE                          VAL R7
      176 CAPTURE                          VAL R17
      177 DUPTABLE                         R22 K52 [{"Context", "EditableDataModelProvider", "UIDataModelProvider"}]
      178 SETTABLEKS                       R17 R22 K49 ["Context"]
      180 SETTABLEKS                       R20 R22 K50 ["EditableDataModelProvider"]
      182 SETTABLEKS                       R21 R22 K51 ["UIDataModelProvider"]
      184 RETURN                           R22 1
