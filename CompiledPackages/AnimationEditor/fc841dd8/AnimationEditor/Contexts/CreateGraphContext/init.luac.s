PROTO_0:
        0 JUMPIF                           R0 ; [+2]
        1 LOADB                            R1 0
        2 RETURN                           R1 1
        3 LOADK                            R3 K0 ["Workspace"]
        4 NAMECALL                         R1 R0 K1 ["IsA"]
        6 CALL                             R1 2 1
        7 JUMPIFNOT                        R1 ; [+2]
        8 LOADB                            R1 0
        9 RETURN                           R1 1
       10 LOADK                            R3 K2 ["Model"]
       11 NAMECALL                         R1 R0 K1 ["IsA"]
       13 CALL                             R1 2 1
       14 JUMPIF                           R1 ; [+5]
       15 LOADK                            R3 K3 ["Humanoid"]
       16 NAMECALL                         R1 R0 K1 ["IsA"]
       18 CALL                             R1 2 1
       19 JUMPIFNOT                        R1 ; [+2]
       20 LOADB                            R1 1
       21 RETURN                           R1 1
       22 LOADB                            R1 0
       23 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+34]
        2 GETUPVAL                         R1 0
        3 LENGTH                           R0 R1
        4 LOADN                            R1 0
        5 JUMPIFNOTLT                      R1 R0 ; [+30]
        7 GETUPVAL                         R2 0
        8 GETTABLEN                        R1 R2 1
        9 JUMPIF                           R1 ; [+2]
       10 LOADB                            R0 0
       11 JUMP                             ; [+20]
       12 LOADK                            R4 K0 ["Workspace"]
       13 NAMECALL                         R2 R1 K1 ["IsA"]
       15 CALL                             R2 2 1
       16 JUMPIFNOT                        R2 ; [+2]
       17 LOADB                            R0 0
       18 JUMP                             ; [+13]
       19 LOADK                            R4 K2 ["Model"]
       20 NAMECALL                         R2 R1 K1 ["IsA"]
       22 CALL                             R2 2 1
       23 JUMPIF                           R2 ; [+5]
       24 LOADK                            R4 K3 ["Humanoid"]
       25 NAMECALL                         R2 R1 K1 ["IsA"]
       27 CALL                             R2 2 1
       28 JUMPIFNOT                        R2 ; [+2]
       29 LOADB                            R0 1
       30 JUMP                             ; [+1]
       31 LOADB                            R0 0
       32 JUMPIFNOT                        R0 ; [+3]
       33 GETUPVAL                         R1 0
       34 GETTABLEN                        R0 R1 1
       35 RETURN                           R0 1
       36 GETUPVAL                         R1 1
       37 GETTABLEKS                       R0 R1 K4 ["selectedGraphInstance"]
       39 JUMPIFNOTEQKNIL                  R0 ; [+3]
       41 LOADNIL                          R0
       42 RETURN                           R0 1
       43 GETUPVAL                         R1 2
       44 GETTABLEKS                       R0 R1 K5 ["findAnimatorParent"]
       46 GETUPVAL                         R2 1
       47 GETTABLEKS                       R1 R2 K4 ["selectedGraphInstance"]
       49 CALL                             R0 1 1
       50 JUMPIF                           R0 ; [+2]
       51 LOADNIL                          R1
       52 RETURN                           R1 1
       53 GETTABLEKS                       R1 R0 K6 ["Parent"]
       55 JUMPIF                           R1 ; [+2]
       56 LOADNIL                          R2
       57 RETURN                           R2 1
       58 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOTEQKNIL                  R1 ; [+2]
        3 LOADB                            R0 0 +1
        4 LOADB                            R0 1
        5 RETURN                           R0 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOTEQKNIL                  R0 ; [+2]
        3 RETURN                           R0 0
        4 GETUPVAL                         R0 1
        5 LOADK                            R2 K0 ["CreateGraphContext.createNewGraphAsync"]
        6 LOADK                            R3 K1 ["Create new graph"]
        7 NAMECALL                         R0 R0 K2 ["TryBeginRecording"]
        9 CALL                             R0 3 1
       10 GETUPVAL                         R2 2
       11 GETTABLEKS                       R1 R2 K3 ["createNewAnimationGraph"]
       13 GETUPVAL                         R2 0
       14 GETUPVAL                         R3 3
       15 LOADK                            R5 K4 ["Common"]
       16 LOADK                            R6 K5 ["AnimationEditor"]
       17 LOADK                            R7 K6 ["Menu"]
       18 LOADK                            R8 K7 ["GraphDefaultName"]
       19 NAMECALL                         R3 R3 K8 ["getExternalText"]
       21 CALL                             R3 5 -1
       22 CALL                             R1 -1 1
       23 JUMPIFNOT                        R1 ; [+11]
       24 GETUPVAL                         R3 4
       25 GETTABLEKS                       R2 R3 K9 ["selectionService"]
       27 NEWTABLE                         R4 0 1
       29 MOVE                             R5 R1
       30 SETLIST                          R4 R5 1 [1]
       32 NAMECALL                         R2 R2 K10 ["Set"]
       34 CALL                             R2 2 0
       35 JUMPIFNOT                        R0 ; [+7]
       36 GETUPVAL                         R2 1
       37 MOVE                             R4 R0
       38 GETIMPORT                        R5 K14 [Enum.FinishRecordingOperation.Commit]
       40 NAMECALL                         R2 R2 K15 ["FinishRecording"]
       42 CALL                             R2 3 0
       43 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOTEQKNIL                  R1 ; [+2]
        3 RETURN                           R0 0
        4 LOADK                            R2 K0 ["rbxassetid://%*"]
        5 MOVE                             R4 R0
        6 NAMECALL                         R2 R2 K1 ["format"]
        8 CALL                             R2 2 1
        9 MOVE                             R1 R2
       10 GETUPVAL                         R2 1
       11 MOVE                             R4 R1
       12 NAMECALL                         R2 R2 K2 ["GetAnimationClipAsync"]
       14 CALL                             R2 2 1
       15 GETUPVAL                         R3 2
       16 MOVE                             R4 R1
       17 MOVE                             R5 R2
       18 GETUPVAL                         R6 0
       19 GETUPVAL                         R8 3
       20 GETTABLEKS                       R7 R8 K3 ["selectionService"]
       22 CALL                             R3 4 0
       23 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+4]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R0 R1 K0 ["Name"]
        5 RETURN                           R0 1
        6 LOADNIL                          R0
        7 RETURN                           R0 1

PROTO_6:
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
       22 GETUPVAL                         R4 4
       23 CALL                             R4 0 1
       24 GETUPVAL                         R6 1
       25 GETTABLEKS                       R5 R6 K5 ["useMemo"]
       27 NEWCLOSURE                       R6 P0
       28 CAPTURE                          VAL R4
       29 CAPTURE                          VAL R3
       30 CAPTURE                          UPVAL U5
       31 NEWTABLE                         R7 0 2
       33 MOVE                             R8 R4
       34 GETTABLEKS                       R9 R3 K6 ["selectedGraphInstance"]
       36 SETLIST                          R7 R8 2 [1]
       38 CALL                             R5 2 1
       39 GETUPVAL                         R7 1
       40 GETTABLEKS                       R6 R7 K5 ["useMemo"]
       42 NEWCLOSURE                       R7 P1
       43 CAPTURE                          VAL R5
       44 NEWTABLE                         R8 0 1
       46 MOVE                             R9 R5
       47 SETLIST                          R8 R9 1 [1]
       49 CALL                             R6 2 1
       50 GETUPVAL                         R8 1
       51 GETTABLEKS                       R7 R8 K7 ["useCallback"]
       53 NEWCLOSURE                       R8 P2
       54 CAPTURE                          VAL R5
       55 CAPTURE                          UPVAL U6
       56 CAPTURE                          UPVAL U7
       57 CAPTURE                          VAL R1
       58 CAPTURE                          VAL R2
       59 NEWTABLE                         R9 0 3
       61 MOVE                             R10 R5
       62 MOVE                             R11 R1
       63 GETTABLEKS                       R12 R2 K8 ["selectionService"]
       65 SETLIST                          R9 R10 3 [1]
       67 CALL                             R7 2 1
       68 GETUPVAL                         R9 1
       69 GETTABLEKS                       R8 R9 K7 ["useCallback"]
       71 NEWCLOSURE                       R9 P3
       72 CAPTURE                          VAL R5
       73 CAPTURE                          UPVAL U8
       74 CAPTURE                          UPVAL U9
       75 CAPTURE                          VAL R2
       76 NEWTABLE                         R10 0 2
       78 MOVE                             R11 R5
       79 GETTABLEKS                       R12 R2 K8 ["selectionService"]
       81 SETLIST                          R10 R11 2 [1]
       83 CALL                             R8 2 1
       84 GETUPVAL                         R10 1
       85 GETTABLEKS                       R9 R10 K5 ["useMemo"]
       87 NEWCLOSURE                       R10 P4
       88 CAPTURE                          VAL R5
       89 NEWTABLE                         R11 0 1
       91 MOVE                             R12 R5
       92 SETLIST                          R11 R12 1 [1]
       94 CALL                             R9 2 1
       95 DUPTABLE                         R10 K13 [{"canCreateGraph", "selectedTargetName", "createNewGraphAsync", "createGraphFromIdAsync"}]
       96 SETTABLEKS                       R6 R10 K9 ["canCreateGraph"]
       98 SETTABLEKS                       R9 R10 K10 ["selectedTargetName"]
      100 SETTABLEKS                       R7 R10 K11 ["createNewGraphAsync"]
      102 SETTABLEKS                       R8 R10 K12 ["createGraphFromIdAsync"]
      104 GETUPVAL                         R12 10
      105 GETTABLEKS                       R11 R12 K14 ["useReplicatedState"]
      107 GETUPVAL                         R13 11
      108 GETTABLEKS                       R12 R13 K15 ["CAN_CREATE_GRAPH"]
      110 MOVE                             R13 R6
      111 CALL                             R11 2 0
      112 GETUPVAL                         R12 10
      113 GETTABLEKS                       R11 R12 K14 ["useReplicatedState"]
      115 GETUPVAL                         R13 11
      116 GETTABLEKS                       R12 R13 K16 ["SELECTED_TARGET_NAME"]
      118 MOVE                             R13 R9
      119 CALL                             R11 2 0
      120 GETUPVAL                         R12 10
      121 GETTABLEKS                       R11 R12 K17 ["useBoundAction"]
      123 GETUPVAL                         R13 12
      124 GETTABLEKS                       R12 R13 K18 ["CREATE_NEW_GRAPH"]
      126 MOVE                             R13 R7
      127 CALL                             R11 2 0
      128 GETUPVAL                         R12 1
      129 GETTABLEKS                       R11 R12 K19 ["createElement"]
      131 GETUPVAL                         R13 13
      132 GETTABLEKS                       R12 R13 K20 ["Provider"]
      134 DUPTABLE                         R13 K22 [{"value"}]
      135 SETTABLEKS                       R10 R13 K21 ["value"]
      137 GETTABLEKS                       R14 R0 K23 ["children"]
      139 CALL                             R11 3 -1
      140 RETURN                           R11 -1

PROTO_7:
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
       21 GETTABLEKS                       R6 R0 K11 ["Util"]
       23 GETTABLEKS                       R5 R6 K12 ["Rig"]
       25 GETTABLEKS                       R4 R5 K13 ["AnimationRigDataUtils"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K10 [require]
       30 GETTABLEKS                       R6 R0 K14 ["Parent"]
       32 GETTABLEKS                       R5 R6 K15 ["Framework"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K10 [require]
       37 GETTABLEKS                       R7 R0 K16 ["Contexts"]
       39 GETTABLEKS                       R6 R7 K17 ["NativeGraphContext"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K10 [require]
       44 GETTABLEKS                       R9 R0 K16 ["Contexts"]
       46 GETTABLEKS                       R8 R9 K17 ["NativeGraphContext"]
       48 GETTABLEKS                       R7 R8 K18 ["NativeGraphUtils"]
       50 CALL                             R6 1 1
       51 GETIMPORT                        R7 K10 [require]
       53 GETTABLEKS                       R10 R0 K11 ["Util"]
       55 GETTABLEKS                       R9 R10 K19 ["Networking"]
       57 GETTABLEKS                       R8 R9 K20 ["NetworkUtils"]
       59 CALL                             R7 1 1
       60 GETIMPORT                        R8 K10 [require]
       62 GETTABLEKS                       R9 R0 K21 ["NodeViewTypes"]
       64 CALL                             R8 1 1
       65 GETIMPORT                        R9 K10 [require]
       67 GETTABLEKS                       R11 R0 K14 ["Parent"]
       69 GETTABLEKS                       R10 R11 K22 ["React"]
       71 CALL                             R9 1 1
       72 GETIMPORT                        R10 K10 [require]
       74 GETTABLEKS                       R12 R0 K14 ["Parent"]
       76 GETTABLEKS                       R11 R12 K23 ["ReactUtils"]
       78 CALL                             R10 1 1
       79 GETIMPORT                        R11 K10 [require]
       81 GETTABLEKS                       R13 R0 K16 ["Contexts"]
       83 GETTABLEKS                       R12 R13 K24 ["SelectionServiceContext"]
       85 CALL                             R11 1 1
       86 GETIMPORT                        R12 K10 [require]
       88 GETIMPORT                        R14 K1 [script]
       90 GETTABLEKS                       R13 R14 K25 ["insertAnimationClip"]
       92 CALL                             R12 1 1
       93 GETIMPORT                        R13 K10 [require]
       95 GETTABLEKS                       R15 R0 K26 ["Hooks"]
       97 GETTABLEKS                       R14 R15 K27 ["useSelection"]
       99 CALL                             R13 1 1
      100 DUPTABLE                         R14 K32 [{"canCreateGraph", "selectedTargetName", "createGraphFromIdAsync", "createNewGraphAsync"}]
      101 LOADB                            R15 0
      102 SETTABLEKS                       R15 R14 K28 ["canCreateGraph"]
      104 LOADNIL                          R15
      105 SETTABLEKS                       R15 R14 K29 ["selectedTargetName"]
      107 GETTABLEKS                       R15 R10 K33 ["createUnimplemented"]
      109 LOADK                            R16 K30 ["createGraphFromIdAsync"]
      110 CALL                             R15 1 1
      111 SETTABLEKS                       R15 R14 K30 ["createGraphFromIdAsync"]
      113 GETTABLEKS                       R15 R10 K33 ["createUnimplemented"]
      115 LOADK                            R16 K31 ["createNewGraphAsync"]
      116 CALL                             R15 1 1
      117 SETTABLEKS                       R15 R14 K31 ["createNewGraphAsync"]
      119 GETTABLEKS                       R15 R9 K34 ["createContext"]
      121 MOVE                             R16 R14
      122 CALL                             R15 1 1
      123 DUPTABLE                         R16 K37 [{"CAN_CREATE_GRAPH", "SELECTED_TARGET_NAME"}]
      124 LOADK                            R17 K38 ["CreateGraphContext_CanCreateGraph"]
      125 SETTABLEKS                       R17 R16 K35 ["CAN_CREATE_GRAPH"]
      127 LOADK                            R17 K39 ["CreateGraphContext_SelectedTargetName"]
      128 SETTABLEKS                       R17 R16 K36 ["SELECTED_TARGET_NAME"]
      130 DUPTABLE                         R17 K42 [{"CREATE_NEW_GRAPH", "CREATE_GRAPH_FROM_ID"}]
      131 LOADK                            R18 K43 ["CreateGraphContext_CreateNewGraphAsync"]
      132 SETTABLEKS                       R18 R17 K40 ["CREATE_NEW_GRAPH"]
      134 LOADK                            R18 K44 ["CreateGraphContext_CreateGraphFromIdAsync"]
      135 SETTABLEKS                       R18 R17 K41 ["CREATE_GRAPH_FROM_ID"]
      137 DUPCLOSURE                       R18 K45 [PROTO_0]
      138 DUPCLOSURE                       R19 K46 [PROTO_6]
      139 CAPTURE                          VAL R4
      140 CAPTURE                          VAL R9
      141 CAPTURE                          VAL R11
      142 CAPTURE                          VAL R5
      143 CAPTURE                          VAL R13
      144 CAPTURE                          VAL R3
      145 CAPTURE                          VAL R2
      146 CAPTURE                          VAL R6
      147 CAPTURE                          VAL R1
      148 CAPTURE                          VAL R12
      149 CAPTURE                          VAL R7
      150 CAPTURE                          VAL R16
      151 CAPTURE                          VAL R17
      152 CAPTURE                          VAL R15
      153 DUPCLOSURE                       R20 K47 [PROTO_7]
      154 CAPTURE                          VAL R7
      155 CAPTURE                          VAL R16
      156 CAPTURE                          VAL R17
      157 CAPTURE                          VAL R9
      158 CAPTURE                          VAL R15
      159 DUPTABLE                         R21 K51 [{"Context", "EditableDataModelProvider", "UIDataModelProvider"}]
      160 SETTABLEKS                       R15 R21 K48 ["Context"]
      162 SETTABLEKS                       R19 R21 K49 ["EditableDataModelProvider"]
      164 SETTABLEKS                       R20 R21 K50 ["UIDataModelProvider"]
      166 RETURN                           R21 1
