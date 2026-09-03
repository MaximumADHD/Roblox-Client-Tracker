PROTO_0:
        0 DUPTABLE                         R1 K3 [{"id", "name", "data"}]
        1 GETUPVAL                         R2 0
        2 GETUPVAL                         R4 1
        3 NAMECALL                         R2 R2 K4 ["instanceToId"]
        5 CALL                             R2 2 1
        6 SETTABLEKS                       R2 R1 K0 ["id"]
        8 GETUPVAL                         R2 2
        9 MOVE                             R3 R0
       10 CALL                             R2 1 1
       11 SETTABLEKS                       R2 R1 K1 ["name"]
       13 GETUPVAL                         R2 3
       14 MOVE                             R3 R0
       15 CALL                             R2 1 1
       16 SETTABLEKS                       R2 R1 K2 ["data"]
       18 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["properties"]
        3 GETTABLEKS                       R2 R2 K1 ["observeString"]
        5 MOVE                             R3 R0
        6 LOADK                            R4 K2 ["Name"]
        7 CALL                             R2 2 1
        8 GETUPVAL                         R3 1
        9 GETTABLEKS                       R3 R3 K3 ["observeFromDefinition"]
       11 MOVE                             R4 R0
       12 MOVE                             R5 R1
       13 CALL                             R3 2 1
       14 GETUPVAL                         R4 2
       15 GETTABLEKS                       R4 R4 K4 ["createComputed"]
       17 NEWCLOSURE                       R5 P0
       18 CAPTURE                          VAL R1
       19 CAPTURE                          VAL R0
       20 CAPTURE                          VAL R2
       21 CAPTURE                          VAL R3
       22 CALL                             R4 1 -1
       23 RETURN                           R4 -1

PROTO_2:
        0 JUMPIFNOTEQKNIL                  R0 ; [+8]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K0 ["of"]
        5 NEWTABLE                         R2 0 0
        7 CALL                             R1 1 -1
        8 RETURN                           R1 -1
        9 GETUPVAL                         R1 0
       10 GETTABLEKS                       R1 R1 K1 ["observeChildrenWhichIsA"]
       12 MOVE                             R2 R0
       13 LOADK                            R3 K2 ["StateMachineDefinition"]
       14 CALL                             R1 2 -1
       15 RETURN                           R1 -1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["switchMap"]
        3 GETUPVAL                         R1 1
        4 DUPCLOSURE                       R2 K1 [PROTO_2]
        5 CAPTURE                          UPVAL U0
        6 CALL                             R0 2 -1
        7 RETURN                           R0 -1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 GETUPVAL                         R3 1
        3 CALL                             R1 2 -1
        4 RETURN                           R1 -1

PROTO_5:
        0 NEWTABLE                         R1 0 0
        2 GETUPVAL                         R2 0
        3 MOVE                             R3 R0
        4 CALL                             R2 1 3
        5 FORGPREP                         R2
        6 GETTABLEKS                       R7 R6 K0 ["id"]
        8 SETTABLE                         R6 R1 R7
        9 FORGLOOP                         R2 2 ; [-4]
       11 RETURN                           R1 1

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["forEach"]
        3 GETUPVAL                         R1 1
        4 NEWCLOSURE                       R2 P0
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 CALL                             R0 2 1
        8 GETUPVAL                         R1 4
        9 GETTABLEKS                       R1 R1 K1 ["createComputed"]
       11 NEWCLOSURE                       R2 P1
       12 CAPTURE                          VAL R0
       13 CALL                             R1 1 -1
       14 RETURN                           R1 -1

PROTO_7:
        0 GETIMPORT                        R0 K2 [Instance.new]
        2 LOADK                            R1 K3 ["StateMachineDefinition"]
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 LOADB                            R3 0
        3 NAMECALL                         R1 R1 K0 ["GenerateGUID"]
        5 CALL                             R1 2 1
        6 SETTABLEKS                       R1 R0 K1 ["NodeId"]
        8 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R2 0
        1 LOADB                            R3 0
        2 CALL                             R2 1 1
        3 JUMPIFEQKNIL                     R2 ; [+6]
        5 LOADK                            R5 K0 ["AnimationGraphDefinition"]
        6 NAMECALL                         R3 R2 K1 ["IsA"]
        8 CALL                             R3 2 1
        9 JUMPIF                           R3 ; [+6]
       10 GETIMPORT                        R3 K3 [warn]
       12 LOADK                            R4 K4 ["StateMachineEditorContext: no AnimationGraphDefinition selected"]
       13 CALL                             R3 1 0
       14 LOADNIL                          R3
       15 RETURN                           R3 1
       16 GETUPVAL                         R3 1
       17 LOADK                            R5 K5 ["StateMachineEditorContext"]
       18 LOADK                            R6 K6 ["createStateMachineAsync"]
       19 NAMECALL                         R3 R3 K7 ["TryBeginRecording"]
       21 CALL                             R3 3 1
       22 GETUPVAL                         R4 2
       23 MOVE                             R5 R2
       24 LOADK                            R6 K8 ["StateMachine"]
       25 CALL                             R4 2 1
       26 GETIMPORT                        R5 K10 [pcall]
       28 DUPCLOSURE                       R6 K11 [PROTO_7]
       29 CALL                             R5 1 2
       30 JUMPIFNOT                        R5 ; [+2]
       31 JUMPIFNOTEQKNIL                  R6 ; [+15]
       33 GETIMPORT                        R7 K3 [warn]
       35 LOADK                            R8 K12 ["StateMachineEditorContext: this Studio build lacks the StateMachineDefinition class; cannot create a state machine."]
       36 CALL                             R7 1 0
       37 JUMPIFNOT                        R3 ; [+7]
       38 GETUPVAL                         R7 1
       39 MOVE                             R9 R3
       40 GETIMPORT                        R10 K16 [Enum.FinishRecordingOperation.Cancel]
       42 NAMECALL                         R7 R7 K17 ["FinishRecording"]
       44 CALL                             R7 3 0
       45 LOADNIL                          R7
       46 RETURN                           R7 1
       47 SETTABLEKS                       R4 R6 K18 ["Name"]
       49 GETIMPORT                        R7 K10 [pcall]
       51 NEWCLOSURE                       R8 P1
       52 CAPTURE                          VAL R6
       53 CAPTURE                          UPVAL U3
       54 CALL                             R7 1 0
       55 SETTABLEKS                       R2 R6 K19 ["Parent"]
       57 GETUPVAL                         R7 4
       58 GETTABLEKS                       R7 R7 K20 ["applyToDefinition"]
       60 MOVE                             R8 R6
       61 GETUPVAL                         R9 5
       62 GETTABLEKS                       R9 R9 K21 ["getDefault"]
       64 CALL                             R9 0 1
       65 MOVE                             R10 R4
       66 CALL                             R7 3 0
       67 JUMPIFEQKNIL                     R0 ; [+13]
       69 JUMPIFEQKNIL                     R1 ; [+11]
       71 GETUPVAL                         R7 6
       72 GETTABLEKS                       R7 R7 K22 ["setNodePosition"]
       74 MOVE                             R8 R6
       75 GETIMPORT                        R9 K25 [Vector2.new]
       77 MOVE                             R10 R0
       78 MOVE                             R11 R1
       79 CALL                             R9 2 -1
       80 CALL                             R7 -1 0
       81 GETUPVAL                         R7 7
       82 MOVE                             R9 R6
       83 NAMECALL                         R7 R7 K26 ["instanceToId"]
       85 CALL                             R7 2 1
       86 JUMPIFNOT                        R3 ; [+7]
       87 GETUPVAL                         R8 1
       88 MOVE                             R10 R3
       89 GETIMPORT                        R11 K28 [Enum.FinishRecordingOperation.Commit]
       91 NAMECALL                         R8 R8 K17 ["FinishRecording"]
       93 CALL                             R8 3 0
       94 RETURN                           R7 1

PROTO_10:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["idToInstance"]
        4 CALL                             R1 2 1
        5 JUMPIFNOTEQKNIL                  R1 ; [+2]
        7 RETURN                           R0 0
        8 GETUPVAL                         R2 1
        9 LOADK                            R4 K1 ["StateMachineEditorContext"]
       10 LOADK                            R5 K2 ["deleteStateMachineAsync"]
       11 NAMECALL                         R2 R2 K3 ["TryBeginRecording"]
       13 CALL                             R2 3 1
       14 LOADNIL                          R3
       15 SETTABLEKS                       R3 R1 K4 ["Parent"]
       17 JUMPIFNOT                        R2 ; [+7]
       18 GETUPVAL                         R3 1
       19 MOVE                             R5 R2
       20 GETIMPORT                        R6 K8 [Enum.FinishRecordingOperation.Commit]
       22 NAMECALL                         R3 R3 K9 ["FinishRecording"]
       24 CALL                             R3 3 0
       25 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R0
        2 NAMECALL                         R2 R2 K0 ["idToInstance"]
        4 CALL                             R2 2 1
        5 JUMPIFEQKNIL                     R2 ; [+3]
        7 JUMPIFNOTEQKS                    R1 K1 [""] ; [+2]
        9 RETURN                           R0 0
       10 GETUPVAL                         R3 1
       11 LOADK                            R5 K2 ["StateMachineEditorContext"]
       12 LOADK                            R6 K3 ["renameStateMachineAsync"]
       13 NAMECALL                         R3 R3 K4 ["TryBeginRecording"]
       15 CALL                             R3 3 1
       16 SETTABLEKS                       R1 R2 K5 ["Name"]
       18 JUMPIFNOT                        R3 ; [+7]
       19 GETUPVAL                         R4 1
       20 MOVE                             R6 R3
       21 GETIMPORT                        R7 K9 [Enum.FinishRecordingOperation.Commit]
       23 NAMECALL                         R4 R4 K10 ["FinishRecording"]
       25 CALL                             R4 3 0
       26 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R0
        2 NAMECALL                         R2 R2 K0 ["idToInstance"]
        4 CALL                             R2 2 1
        5 JUMPIFNOTEQKNIL                  R2 ; [+2]
        7 RETURN                           R0 0
        8 GETUPVAL                         R3 1
        9 LOADK                            R5 K1 ["StateMachineEditorContext"]
       10 LOADK                            R6 K2 ["setStateMachineDataAsync"]
       11 NAMECALL                         R3 R3 K3 ["TryBeginRecording"]
       13 CALL                             R3 3 1
       14 GETUPVAL                         R4 2
       15 GETTABLEKS                       R4 R4 K4 ["applyToDefinition"]
       17 MOVE                             R5 R2
       18 MOVE                             R6 R1
       19 GETTABLEKS                       R7 R2 K5 ["Name"]
       21 CALL                             R4 3 1
       22 MOVE                             R5 R4
       23 LOADNIL                          R6
       24 LOADNIL                          R7
       25 FORGPREP                         R5
       26 GETIMPORT                        R10 K7 [warn]
       28 LOADK                            R12 K8 ["StateMachine \"%*\": %*"]
       29 GETTABLEKS                       R14 R2 K5 ["Name"]
       31 MOVE                             R15 R9
       32 NAMECALL                         R12 R12 K9 ["format"]
       34 CALL                             R12 3 1
       35 MOVE                             R11 R12
       36 CALL                             R10 1 0
       37 FORGLOOP                         R5 2 ; [-12]
       39 JUMPIFNOT                        R3 ; [+7]
       40 GETUPVAL                         R5 1
       41 MOVE                             R7 R3
       42 GETIMPORT                        R8 K13 [Enum.FinishRecordingOperation.Commit]
       44 NAMECALL                         R5 R5 K14 ["FinishRecording"]
       46 CALL                             R5 3 0
       47 RETURN                           R0 0

PROTO_13:
        0 DUPTABLE                         R0 K5 [{"createStateMachineAsync", "deleteStateMachineAsync", "renameStateMachineAsync", "setStateMachineDataAsync", "stateMachines"}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["createStateMachineAsync"]
        4 GETUPVAL                         R1 1
        5 SETTABLEKS                       R1 R0 K1 ["deleteStateMachineAsync"]
        7 GETUPVAL                         R1 2
        8 SETTABLEKS                       R1 R0 K2 ["renameStateMachineAsync"]
       10 GETUPVAL                         R1 3
       11 SETTABLEKS                       R1 R0 K3 ["setStateMachineDataAsync"]
       13 GETUPVAL                         R1 4
       14 SETTABLEKS                       R1 R0 K4 ["stateMachines"]
       16 RETURN                           R0 1

PROTO_14:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R3 2
        8 CALL                             R3 0 1
        9 JUMPIFNOT                        R3 ; [+8]
       10 GETUPVAL                         R2 0
       11 GETTABLEKS                       R2 R2 K0 ["useContext"]
       13 GETUPVAL                         R3 3
       14 GETTABLEKS                       R3 R3 K1 ["Context"]
       16 CALL                             R2 1 1
       17 JUMP                             ; [+1]
       18 LOADNIL                          R2
       19 GETUPVAL                         R3 0
       20 GETTABLEKS                       R3 R3 K0 ["useContext"]
       22 GETUPVAL                         R4 4
       23 GETTABLEKS                       R4 R4 K1 ["Context"]
       25 CALL                             R3 1 1
       26 GETTABLEKS                       R3 R3 K2 ["instanceRegistry"]
       28 GETUPVAL                         R5 2
       29 CALL                             R5 0 1
       30 JUMPIFNOT                        R5 ; [+3]
       31 GETTABLEKS                       R4 R2 K3 ["observeSelectedGraphInstance"]
       33 JUMP                             ; [+2]
       34 GETTABLEKS                       R4 R1 K4 ["observeSelectedGraphInstance_DEPRECATED"]
       36 GETUPVAL                         R5 0
       37 GETTABLEKS                       R5 R5 K5 ["useMemo"]
       39 NEWCLOSURE                       R6 P0
       40 CAPTURE                          UPVAL U5
       41 CAPTURE                          VAL R4
       42 NEWTABLE                         R7 0 1
       44 MOVE                             R8 R4
       45 SETLIST                          R7 R8 1 [1]
       47 CALL                             R5 2 1
       48 GETUPVAL                         R6 6
       49 GETTABLEKS                       R6 R6 K6 ["useSignalState"]
       51 GETUPVAL                         R7 0
       52 GETTABLEKS                       R7 R7 K5 ["useMemo"]
       54 NEWCLOSURE                       R8 P1
       55 CAPTURE                          UPVAL U5
       56 CAPTURE                          VAL R5
       57 CAPTURE                          UPVAL U7
       58 CAPTURE                          VAL R3
       59 CAPTURE                          UPVAL U8
       60 NEWTABLE                         R9 0 2
       62 MOVE                             R10 R5
       63 MOVE                             R11 R3
       64 SETLIST                          R9 R10 2 [1]
       66 CALL                             R7 2 -1
       67 CALL                             R6 -1 1
       68 GETUPVAL                         R7 0
       69 GETTABLEKS                       R7 R7 K7 ["useCallback"]
       71 NEWCLOSURE                       R8 P2
       72 CAPTURE                          VAL R4
       73 CAPTURE                          UPVAL U9
       74 CAPTURE                          UPVAL U10
       75 CAPTURE                          UPVAL U11
       76 CAPTURE                          UPVAL U12
       77 CAPTURE                          UPVAL U13
       78 CAPTURE                          UPVAL U14
       79 CAPTURE                          VAL R3
       80 NEWTABLE                         R9 0 2
       82 MOVE                             R10 R4
       83 MOVE                             R11 R3
       84 SETLIST                          R9 R10 2 [1]
       86 CALL                             R7 2 1
       87 GETUPVAL                         R8 0
       88 GETTABLEKS                       R8 R8 K7 ["useCallback"]
       90 NEWCLOSURE                       R9 P3
       91 CAPTURE                          VAL R3
       92 CAPTURE                          UPVAL U9
       93 NEWTABLE                         R10 0 1
       95 MOVE                             R11 R3
       96 SETLIST                          R10 R11 1 [1]
       98 CALL                             R8 2 1
       99 GETUPVAL                         R9 0
      100 GETTABLEKS                       R9 R9 K7 ["useCallback"]
      102 NEWCLOSURE                       R10 P4
      103 CAPTURE                          VAL R3
      104 CAPTURE                          UPVAL U9
      105 NEWTABLE                         R11 0 1
      107 MOVE                             R12 R3
      108 SETLIST                          R11 R12 1 [1]
      110 CALL                             R9 2 1
      111 GETUPVAL                         R10 0
      112 GETTABLEKS                       R10 R10 K7 ["useCallback"]
      114 NEWCLOSURE                       R11 P5
      115 CAPTURE                          VAL R3
      116 CAPTURE                          UPVAL U9
      117 CAPTURE                          UPVAL U12
      118 NEWTABLE                         R12 0 1
      120 MOVE                             R13 R3
      121 SETLIST                          R12 R13 1 [1]
      123 CALL                             R10 2 1
      124 GETUPVAL                         R11 0
      125 GETTABLEKS                       R11 R11 K5 ["useMemo"]
      127 NEWCLOSURE                       R12 P6
      128 CAPTURE                          VAL R7
      129 CAPTURE                          VAL R8
      130 CAPTURE                          VAL R9
      131 CAPTURE                          VAL R10
      132 CAPTURE                          VAL R6
      133 NEWTABLE                         R13 0 5
      135 MOVE                             R14 R7
      136 MOVE                             R15 R8
      137 MOVE                             R16 R9
      138 MOVE                             R17 R10
      139 MOVE                             R18 R6
      140 SETLIST                          R13 R14 5 [1]
      142 CALL                             R11 2 1
      143 GETUPVAL                         R12 15
      144 GETTABLEKS                       R12 R12 K8 ["useReplicatedState"]
      146 LOADK                            R13 K9 ["StateMachineEditorContext_StateMachines"]
      147 MOVE                             R14 R6
      148 CALL                             R12 2 0
      149 GETUPVAL                         R12 15
      150 GETTABLEKS                       R12 R12 K10 ["useBoundAction"]
      152 LOADK                            R13 K11 ["StateMachineEditorContext_CreateAsync"]
      153 MOVE                             R14 R7
      154 CALL                             R12 2 0
      155 GETUPVAL                         R12 15
      156 GETTABLEKS                       R12 R12 K10 ["useBoundAction"]
      158 LOADK                            R13 K12 ["StateMachineEditorContext_DeleteAsync"]
      159 MOVE                             R14 R8
      160 CALL                             R12 2 0
      161 GETUPVAL                         R12 15
      162 GETTABLEKS                       R12 R12 K10 ["useBoundAction"]
      164 LOADK                            R13 K13 ["StateMachineEditorContext_RenameAsync"]
      165 MOVE                             R14 R9
      166 CALL                             R12 2 0
      167 GETUPVAL                         R12 15
      168 GETTABLEKS                       R12 R12 K10 ["useBoundAction"]
      170 LOADK                            R13 K14 ["StateMachineEditorContext_SetDataAsync"]
      171 MOVE                             R14 R10
      172 CALL                             R12 2 0
      173 GETUPVAL                         R12 0
      174 GETTABLEKS                       R12 R12 K15 ["createElement"]
      176 GETUPVAL                         R13 16
      177 GETTABLEKS                       R13 R13 K16 ["Provider"]
      179 DUPTABLE                         R14 K18 [{"value"}]
      180 SETTABLEKS                       R11 R14 K17 ["value"]
      182 GETTABLEKS                       R15 R0 K19 ["children"]
      184 CALL                             R12 3 -1
      185 RETURN                           R12 -1

PROTO_15:
        0 DUPTABLE                         R0 K5 [{"createStateMachineAsync", "deleteStateMachineAsync", "renameStateMachineAsync", "setStateMachineDataAsync", "stateMachines"}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["createStateMachineAsync"]
        4 GETUPVAL                         R1 1
        5 SETTABLEKS                       R1 R0 K1 ["deleteStateMachineAsync"]
        7 GETUPVAL                         R1 2
        8 SETTABLEKS                       R1 R0 K2 ["renameStateMachineAsync"]
       10 GETUPVAL                         R1 3
       11 SETTABLEKS                       R1 R0 K3 ["setStateMachineDataAsync"]
       13 GETUPVAL                         R1 4
       14 SETTABLEKS                       R1 R0 K4 ["stateMachines"]
       16 RETURN                           R0 1

PROTO_16:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useBoundAction"]
        3 LOADK                            R2 K1 ["StateMachineEditorContext_CreateAsync"]
        4 CALL                             R1 1 1
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K0 ["useBoundAction"]
        8 LOADK                            R3 K2 ["StateMachineEditorContext_DeleteAsync"]
        9 CALL                             R2 1 1
       10 GETUPVAL                         R3 0
       11 GETTABLEKS                       R3 R3 K0 ["useBoundAction"]
       13 LOADK                            R4 K3 ["StateMachineEditorContext_RenameAsync"]
       14 CALL                             R3 1 1
       15 GETUPVAL                         R4 0
       16 GETTABLEKS                       R4 R4 K0 ["useBoundAction"]
       18 LOADK                            R5 K4 ["StateMachineEditorContext_SetDataAsync"]
       19 CALL                             R4 1 1
       20 GETUPVAL                         R5 0
       21 GETTABLEKS                       R5 R5 K5 ["useReplicatedStateListener"]
       23 LOADK                            R6 K6 ["StateMachineEditorContext_StateMachines"]
       24 NEWTABLE                         R7 0 0
       26 CALL                             R5 2 1
       27 GETUPVAL                         R6 1
       28 GETTABLEKS                       R6 R6 K7 ["useMemo"]
       30 NEWCLOSURE                       R7 P0
       31 CAPTURE                          VAL R1
       32 CAPTURE                          VAL R2
       33 CAPTURE                          VAL R3
       34 CAPTURE                          VAL R4
       35 CAPTURE                          VAL R5
       36 NEWTABLE                         R8 0 5
       38 MOVE                             R9 R1
       39 MOVE                             R10 R2
       40 MOVE                             R11 R3
       41 MOVE                             R12 R4
       42 MOVE                             R13 R5
       43 SETLIST                          R8 R9 5 [1]
       45 CALL                             R6 2 1
       46 GETUPVAL                         R7 1
       47 GETTABLEKS                       R7 R7 K8 ["createElement"]
       49 GETUPVAL                         R8 2
       50 GETTABLEKS                       R8 R8 K9 ["Provider"]
       52 DUPTABLE                         R9 K11 [{"value"}]
       53 SETTABLEKS                       R6 R9 K10 ["value"]
       55 GETTABLEKS                       R10 R0 K12 ["children"]
       57 CALL                             R7 3 -1
       58 RETURN                           R7 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["ChangeHistoryService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K1 [game]
        9 LOADK                            R3 K4 ["HttpService"]
       10 NAMECALL                         R1 R1 K3 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K6 [script]
       15 LOADK                            R4 K7 ["AnimationEditor"]
       16 NAMECALL                         R2 R2 K8 ["FindFirstAncestor"]
       18 CALL                             R2 2 1
       19 GETIMPORT                        R3 K10 [require]
       21 GETTABLEKS                       R4 R2 K11 ["Contexts"]
       23 GETTABLEKS                       R4 R4 K12 ["InstanceRegistryContext"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K10 [require]
       28 GETTABLEKS                       R5 R2 K11 ["Contexts"]
       30 GETTABLEKS                       R5 R5 K13 ["NativeGraphContext"]
       32 CALL                             R4 1 1
       33 GETIMPORT                        R5 K10 [require]
       35 GETTABLEKS                       R6 R2 K11 ["Contexts"]
       37 GETTABLEKS                       R6 R6 K13 ["NativeGraphContext"]
       39 GETTABLEKS                       R6 R6 K14 ["NativeGraphUtils"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K10 [require]
       44 GETTABLEKS                       R7 R2 K15 ["Util"]
       46 GETTABLEKS                       R7 R7 K16 ["Networking"]
       48 GETTABLEKS                       R7 R7 K17 ["NetworkUtils"]
       50 CALL                             R6 1 1
       51 GETIMPORT                        R7 K10 [require]
       53 GETTABLEKS                       R8 R2 K18 ["Parent"]
       55 GETTABLEKS                       R8 R8 K19 ["React"]
       57 CALL                             R7 1 1
       58 GETIMPORT                        R8 K10 [require]
       60 GETTABLEKS                       R9 R2 K18 ["Parent"]
       62 GETTABLEKS                       R9 R9 K20 ["ReactUtils"]
       64 CALL                             R8 1 1
       65 GETIMPORT                        R9 K10 [require]
       67 GETTABLEKS                       R10 R2 K11 ["Contexts"]
       69 GETTABLEKS                       R10 R10 K21 ["SelectedGraphContext"]
       71 CALL                             R9 1 1
       72 GETIMPORT                        R10 K10 [require]
       74 GETTABLEKS                       R11 R2 K15 ["Util"]
       76 GETTABLEKS                       R11 R11 K22 ["Signals"]
       78 GETTABLEKS                       R11 R11 K23 ["Experimental"]
       80 GETTABLEKS                       R11 R11 K24 ["SignalExperimentalUtils"]
       82 CALL                             R10 1 1
       83 GETIMPORT                        R11 K10 [require]
       85 GETTABLEKS                       R12 R2 K18 ["Parent"]
       87 GETTABLEKS                       R12 R12 K22 ["Signals"]
       89 CALL                             R11 1 1
       90 GETIMPORT                        R12 K10 [require]
       92 GETTABLEKS                       R13 R2 K15 ["Util"]
       94 GETTABLEKS                       R13 R13 K22 ["Signals"]
       96 GETTABLEKS                       R13 R13 K25 ["SignalsInstanceUtils"]
       98 CALL                             R12 1 1
       99 GETIMPORT                        R13 K10 [require]
      101 GETTABLEKS                       R14 R2 K18 ["Parent"]
      103 GETTABLEKS                       R14 R14 K26 ["SignalsReact"]
      105 CALL                             R13 1 1
      106 GETIMPORT                        R14 K10 [require]
      108 GETTABLEKS                       R15 R2 K18 ["Parent"]
      110 GETTABLEKS                       R15 R15 K27 ["StateMachineGraphing"]
      112 CALL                             R14 1 1
      113 GETIMPORT                        R15 K10 [require]
      115 GETTABLEKS                       R16 R2 K28 ["Components"]
      117 GETTABLEKS                       R16 R16 K29 ["NodeView"]
      119 GETTABLEKS                       R16 R16 K30 ["StateMachine"]
      121 GETTABLEKS                       R16 R16 K31 ["StateMachineMaterializer"]
      123 CALL                             R15 1 1
      124 GETIMPORT                        R16 K10 [require]
      126 GETTABLEKS                       R17 R2 K15 ["Util"]
      128 GETTABLEKS                       R17 R17 K22 ["Signals"]
      130 GETTABLEKS                       R17 R17 K32 ["TypedInstanceSignals"]
      132 CALL                             R16 1 1
      133 GETIMPORT                        R17 K10 [require]
      135 GETTABLEKS                       R18 R2 K15 ["Util"]
      137 GETTABLEKS                       R18 R18 K33 ["getDeduplicatedName"]
      139 CALL                             R17 1 1
      140 GETIMPORT                        R18 K10 [require]
      142 GETTABLEKS                       R19 R2 K34 ["Flags"]
      144 GETTABLEKS                       R19 R19 K35 ["getFFlagAnimGraphUI_RunTimeDebug"]
      146 CALL                             R18 1 1
      147 GETTABLEKS                       R19 R14 K36 ["Data"]
      149 DUPTABLE                         R20 K39 [{["STATE_MACHINES"] = "StateMachineEditorContext_StateMachines"}]
      150 DUPTABLE                         R21 K48 [{["CREATE"] = "StateMachineEditorContext_CreateAsync", ["DELETE"] = "StateMachineEditorContext_DeleteAsync", ["RENAME"] = "StateMachineEditorContext_RenameAsync", ["SET_DATA"] = "StateMachineEditorContext_SetDataAsync"}]
      151 DUPTABLE                         R22 K54 [{"createStateMachineAsync", "deleteStateMachineAsync", "renameStateMachineAsync", "setStateMachineDataAsync", "stateMachines"}]
      152 GETTABLEKS                       R23 R8 K55 ["createUnimplemented"]
      154 LOADK                            R24 K49 ["createStateMachineAsync"]
      155 CALL                             R23 1 1
      156 SETTABLEKS                       R23 R22 K49 ["createStateMachineAsync"]
      158 GETTABLEKS                       R23 R8 K55 ["createUnimplemented"]
      160 LOADK                            R24 K50 ["deleteStateMachineAsync"]
      161 CALL                             R23 1 1
      162 SETTABLEKS                       R23 R22 K50 ["deleteStateMachineAsync"]
      164 GETTABLEKS                       R23 R8 K55 ["createUnimplemented"]
      166 LOADK                            R24 K51 ["renameStateMachineAsync"]
      167 CALL                             R23 1 1
      168 SETTABLEKS                       R23 R22 K51 ["renameStateMachineAsync"]
      170 GETTABLEKS                       R23 R8 K55 ["createUnimplemented"]
      172 LOADK                            R24 K52 ["setStateMachineDataAsync"]
      173 CALL                             R23 1 1
      174 SETTABLEKS                       R23 R22 K52 ["setStateMachineDataAsync"]
      176 NEWTABLE                         R23 0 0
      178 SETTABLEKS                       R23 R22 K53 ["stateMachines"]
      180 GETTABLEKS                       R23 R7 K56 ["createContext"]
      182 MOVE                             R24 R22
      183 CALL                             R23 1 1
      184 LOADK                            R24 K57 ["StateMachineEditorContext"]
      185 SETTABLEKS                       R24 R23 K58 ["displayName"]
      187 DUPCLOSURE                       R24 K59 [PROTO_1]
      188 CAPTURE                          VAL R16
      189 CAPTURE                          VAL R15
      190 CAPTURE                          VAL R10
      191 DUPCLOSURE                       R25 K60 [PROTO_14]
      192 CAPTURE                          VAL R7
      193 CAPTURE                          VAL R4
      194 CAPTURE                          VAL R18
      195 CAPTURE                          VAL R9
      196 CAPTURE                          VAL R3
      197 CAPTURE                          VAL R12
      198 CAPTURE                          VAL R13
      199 CAPTURE                          VAL R24
      200 CAPTURE                          VAL R10
      201 CAPTURE                          VAL R0
      202 CAPTURE                          VAL R17
      203 CAPTURE                          VAL R1
      204 CAPTURE                          VAL R15
      205 CAPTURE                          VAL R19
      206 CAPTURE                          VAL R5
      207 CAPTURE                          VAL R6
      208 CAPTURE                          VAL R23
      209 DUPCLOSURE                       R26 K61 [PROTO_16]
      210 CAPTURE                          VAL R6
      211 CAPTURE                          VAL R7
      212 CAPTURE                          VAL R23
      213 DUPTABLE                         R27 K65 [{"Context", "EditableDataModelProvider", "UIDataModelProvider"}]
      214 SETTABLEKS                       R23 R27 K62 ["Context"]
      216 SETTABLEKS                       R25 R27 K63 ["EditableDataModelProvider"]
      218 SETTABLEKS                       R26 R27 K64 ["UIDataModelProvider"]
      220 RETURN                           R27 1
