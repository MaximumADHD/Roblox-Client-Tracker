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
        0 GETUPVAL                         R3 0
        1 MOVE                             R5 R1
        2 NAMECALL                         R3 R3 K0 ["idToInstance"]
        4 CALL                             R3 2 1
        5 JUMPIFNOTEQKNIL                  R3 ; [+2]
        7 RETURN                           R0 0
        8 GETUPVAL                         R4 1
        9 LOADK                            R6 K1 ["StateMachineEditorContext"]
       10 MOVE                             R7 R0
       11 NAMECALL                         R4 R4 K2 ["TryBeginRecording"]
       13 CALL                             R4 3 1
       14 MOVE                             R5 R2
       15 MOVE                             R6 R3
       16 CALL                             R5 1 0
       17 JUMPIFNOT                        R4 ; [+7]
       18 GETUPVAL                         R5 1
       19 MOVE                             R7 R4
       20 GETIMPORT                        R8 K6 [Enum.FinishRecordingOperation.Commit]
       22 NAMECALL                         R5 R5 K7 ["FinishRecording"]
       24 CALL                             R5 3 0
       25 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createState"]
        3 MOVE                             R2 R0
        4 GETUPVAL                         R3 1
        5 GETUPVAL                         R4 2
        6 CALL                             R1 3 0
        7 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R3 0
        1 LOADK                            R4 K0 ["createStateAsync"]
        2 MOVE                             R5 R0
        3 NEWCLOSURE                       R6 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          VAL R1
        6 CAPTURE                          VAL R2
        7 CALL                             R3 3 0
        8 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R1 0
        1 LOADNIL                          R2
        2 LOADNIL                          R3
        3 FORGPREP                         R1
        4 GETUPVAL                         R6 1
        5 GETTABLEKS                       R6 R6 K0 ["deleteState"]
        7 MOVE                             R7 R0
        8 MOVE                             R8 R5
        9 CALL                             R6 2 0
       10 FORGLOOP                         R1 2 ; [-7]
       12 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R2 0
        1 LOADK                            R3 K0 ["deleteStatesAsync"]
        2 MOVE                             R4 R0
        3 NEWCLOSURE                       R5 P0
        4 CAPTURE                          VAL R1
        5 CAPTURE                          UPVAL U1
        6 CALL                             R2 3 0
        7 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R1 0
        1 LOADNIL                          R2
        2 LOADNIL                          R3
        3 FORGPREP                         R1
        4 GETUPVAL                         R6 1
        5 GETTABLEKS                       R6 R6 K0 ["moveState"]
        7 MOVE                             R7 R0
        8 MOVE                             R8 R4
        9 MOVE                             R9 R5
       10 CALL                             R6 3 0
       11 FORGLOOP                         R1 2 ; [-8]
       13 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R2 0
        1 LOADK                            R3 K0 ["moveStatesAsync"]
        2 MOVE                             R4 R0
        3 NEWCLOSURE                       R5 P0
        4 CAPTURE                          VAL R1
        5 CAPTURE                          UPVAL U1
        6 CALL                             R2 3 0
        7 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["renameState"]
        3 MOVE                             R2 R0
        4 GETUPVAL                         R3 1
        5 GETUPVAL                         R4 2
        6 CALL                             R1 3 0
        7 RETURN                           R0 0

PROTO_20:
        0 GETUPVAL                         R3 0
        1 LOADK                            R4 K0 ["renameStateAsync"]
        2 MOVE                             R5 R0
        3 NEWCLOSURE                       R6 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          VAL R1
        6 CAPTURE                          VAL R2
        7 CALL                             R3 3 0
        8 RETURN                           R0 0

PROTO_21:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createTransition"]
        3 MOVE                             R2 R0
        4 GETUPVAL                         R3 1
        5 GETUPVAL                         R4 2
        6 CALL                             R1 3 0
        7 RETURN                           R0 0

PROTO_22:
        0 GETUPVAL                         R3 0
        1 LOADK                            R4 K0 ["createTransitionAsync"]
        2 MOVE                             R5 R0
        3 NEWCLOSURE                       R6 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          VAL R1
        6 CAPTURE                          VAL R2
        7 CALL                             R3 3 0
        8 RETURN                           R0 0

PROTO_23:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createStateAndTransition"]
        3 MOVE                             R2 R0
        4 GETUPVAL                         R3 1
        5 GETUPVAL                         R4 2
        6 GETUPVAL                         R5 3
        7 CALL                             R1 4 0
        8 RETURN                           R0 0

PROTO_24:
        0 GETUPVAL                         R4 0
        1 LOADK                            R5 K0 ["createStateAndTransitionAsync"]
        2 MOVE                             R6 R0
        3 NEWCLOSURE                       R7 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          VAL R1
        6 CAPTURE                          VAL R2
        7 CAPTURE                          VAL R3
        8 CALL                             R4 3 0
        9 RETURN                           R0 0

PROTO_25:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["deleteTransition"]
        3 MOVE                             R2 R0
        4 GETUPVAL                         R3 1
        5 CALL                             R1 2 0
        6 RETURN                           R0 0

PROTO_26:
        0 GETUPVAL                         R2 0
        1 LOADK                            R3 K0 ["deleteTransitionAsync"]
        2 MOVE                             R4 R0
        3 NEWCLOSURE                       R5 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          VAL R1
        6 CALL                             R2 3 0
        7 RETURN                           R0 0

PROTO_27:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["setTransitionField"]
        3 MOVE                             R2 R0
        4 GETUPVAL                         R3 1
        5 GETUPVAL                         R4 2
        6 GETUPVAL                         R5 3
        7 CALL                             R1 4 0
        8 RETURN                           R0 0

PROTO_28:
        0 GETUPVAL                         R4 0
        1 LOADK                            R5 K0 ["setTransitionFieldAsync"]
        2 MOVE                             R6 R0
        3 NEWCLOSURE                       R7 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          VAL R1
        6 CAPTURE                          VAL R2
        7 CAPTURE                          VAL R3
        8 CALL                             R4 3 0
        9 RETURN                           R0 0

PROTO_29:
        0 DUPTABLE                         R0 K12 [{"createStateMachineAsync", "deleteStateMachineAsync", "renameStateMachineAsync", "createStateAsync", "deleteStatesAsync", "moveStatesAsync", "renameStateAsync", "createTransitionAsync", "createStateAndTransitionAsync", "deleteTransitionAsync", "setTransitionFieldAsync", "stateMachines"}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["createStateMachineAsync"]
        4 GETUPVAL                         R1 1
        5 SETTABLEKS                       R1 R0 K1 ["deleteStateMachineAsync"]
        7 GETUPVAL                         R1 2
        8 SETTABLEKS                       R1 R0 K2 ["renameStateMachineAsync"]
       10 GETUPVAL                         R1 3
       11 SETTABLEKS                       R1 R0 K3 ["createStateAsync"]
       13 GETUPVAL                         R1 4
       14 SETTABLEKS                       R1 R0 K4 ["deleteStatesAsync"]
       16 GETUPVAL                         R1 5
       17 SETTABLEKS                       R1 R0 K5 ["moveStatesAsync"]
       19 GETUPVAL                         R1 6
       20 SETTABLEKS                       R1 R0 K6 ["renameStateAsync"]
       22 GETUPVAL                         R1 7
       23 SETTABLEKS                       R1 R0 K7 ["createTransitionAsync"]
       25 GETUPVAL                         R1 8
       26 SETTABLEKS                       R1 R0 K8 ["createStateAndTransitionAsync"]
       28 GETUPVAL                         R1 9
       29 SETTABLEKS                       R1 R0 K9 ["deleteTransitionAsync"]
       31 GETUPVAL                         R1 10
       32 SETTABLEKS                       R1 R0 K10 ["setTransitionFieldAsync"]
       34 GETUPVAL                         R1 11
       35 SETTABLEKS                       R1 R0 K11 ["stateMachines"]
       37 RETURN                           R0 1

PROTO_30:
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
      117 NEWTABLE                         R12 0 1
      119 MOVE                             R13 R3
      120 SETLIST                          R12 R13 1 [1]
      122 CALL                             R10 2 1
      123 GETUPVAL                         R11 0
      124 GETTABLEKS                       R11 R11 K7 ["useCallback"]
      126 NEWCLOSURE                       R12 P6
      127 CAPTURE                          VAL R10
      128 CAPTURE                          UPVAL U12
      129 NEWTABLE                         R13 0 1
      131 MOVE                             R14 R10
      132 SETLIST                          R13 R14 1 [1]
      134 CALL                             R11 2 1
      135 GETUPVAL                         R12 0
      136 GETTABLEKS                       R12 R12 K7 ["useCallback"]
      138 NEWCLOSURE                       R13 P7
      139 CAPTURE                          VAL R10
      140 CAPTURE                          UPVAL U12
      141 NEWTABLE                         R14 0 1
      143 MOVE                             R15 R10
      144 SETLIST                          R14 R15 1 [1]
      146 CALL                             R12 2 1
      147 GETUPVAL                         R13 0
      148 GETTABLEKS                       R13 R13 K7 ["useCallback"]
      150 NEWCLOSURE                       R14 P8
      151 CAPTURE                          VAL R10
      152 CAPTURE                          UPVAL U12
      153 NEWTABLE                         R15 0 1
      155 MOVE                             R16 R10
      156 SETLIST                          R15 R16 1 [1]
      158 CALL                             R13 2 1
      159 GETUPVAL                         R14 0
      160 GETTABLEKS                       R14 R14 K7 ["useCallback"]
      162 NEWCLOSURE                       R15 P9
      163 CAPTURE                          VAL R10
      164 CAPTURE                          UPVAL U12
      165 NEWTABLE                         R16 0 1
      167 MOVE                             R17 R10
      168 SETLIST                          R16 R17 1 [1]
      170 CALL                             R14 2 1
      171 GETUPVAL                         R15 0
      172 GETTABLEKS                       R15 R15 K7 ["useCallback"]
      174 NEWCLOSURE                       R16 P10
      175 CAPTURE                          VAL R10
      176 CAPTURE                          UPVAL U12
      177 NEWTABLE                         R17 0 1
      179 MOVE                             R18 R10
      180 SETLIST                          R17 R18 1 [1]
      182 CALL                             R15 2 1
      183 GETUPVAL                         R16 0
      184 GETTABLEKS                       R16 R16 K7 ["useCallback"]
      186 NEWCLOSURE                       R17 P11
      187 CAPTURE                          VAL R10
      188 CAPTURE                          UPVAL U12
      189 NEWTABLE                         R18 0 1
      191 MOVE                             R19 R10
      192 SETLIST                          R18 R19 1 [1]
      194 CALL                             R16 2 1
      195 GETUPVAL                         R17 0
      196 GETTABLEKS                       R17 R17 K7 ["useCallback"]
      198 NEWCLOSURE                       R18 P12
      199 CAPTURE                          VAL R10
      200 CAPTURE                          UPVAL U12
      201 NEWTABLE                         R19 0 1
      203 MOVE                             R20 R10
      204 SETLIST                          R19 R20 1 [1]
      206 CALL                             R17 2 1
      207 GETUPVAL                         R18 0
      208 GETTABLEKS                       R18 R18 K7 ["useCallback"]
      210 NEWCLOSURE                       R19 P13
      211 CAPTURE                          VAL R10
      212 CAPTURE                          UPVAL U12
      213 NEWTABLE                         R20 0 1
      215 MOVE                             R21 R10
      216 SETLIST                          R20 R21 1 [1]
      218 CALL                             R18 2 1
      219 GETUPVAL                         R19 0
      220 GETTABLEKS                       R19 R19 K5 ["useMemo"]
      222 NEWCLOSURE                       R20 P14
      223 CAPTURE                          VAL R7
      224 CAPTURE                          VAL R8
      225 CAPTURE                          VAL R9
      226 CAPTURE                          VAL R11
      227 CAPTURE                          VAL R12
      228 CAPTURE                          VAL R13
      229 CAPTURE                          VAL R14
      230 CAPTURE                          VAL R15
      231 CAPTURE                          VAL R16
      232 CAPTURE                          VAL R17
      233 CAPTURE                          VAL R18
      234 CAPTURE                          VAL R6
      235 NEWTABLE                         R21 0 12
      237 MOVE                             R22 R7
      238 MOVE                             R23 R8
      239 MOVE                             R24 R9
      240 MOVE                             R25 R11
      241 MOVE                             R26 R12
      242 MOVE                             R27 R13
      243 MOVE                             R28 R14
      244 MOVE                             R29 R15
      245 MOVE                             R30 R16
      246 MOVE                             R31 R17
      247 MOVE                             R32 R18
      248 MOVE                             R33 R6
      249 SETLIST                          R21 R22 12 [1]
      251 CALL                             R19 2 1
      252 GETUPVAL                         R20 15
      253 GETTABLEKS                       R20 R20 K8 ["useProducer"]
      255 MOVE                             R21 R6
      256 CALL                             R20 1 0
      257 GETUPVAL                         R20 16
      258 GETTABLEKS                       R20 R20 K8 ["useProducer"]
      260 MOVE                             R21 R7
      261 CALL                             R20 1 0
      262 GETUPVAL                         R20 17
      263 GETTABLEKS                       R20 R20 K8 ["useProducer"]
      265 MOVE                             R21 R8
      266 CALL                             R20 1 0
      267 GETUPVAL                         R20 18
      268 GETTABLEKS                       R20 R20 K8 ["useProducer"]
      270 MOVE                             R21 R9
      271 CALL                             R20 1 0
      272 GETUPVAL                         R20 19
      273 GETTABLEKS                       R20 R20 K8 ["useProducer"]
      275 MOVE                             R21 R11
      276 CALL                             R20 1 0
      277 GETUPVAL                         R20 20
      278 GETTABLEKS                       R20 R20 K8 ["useProducer"]
      280 MOVE                             R21 R12
      281 CALL                             R20 1 0
      282 GETUPVAL                         R20 21
      283 GETTABLEKS                       R20 R20 K8 ["useProducer"]
      285 MOVE                             R21 R13
      286 CALL                             R20 1 0
      287 GETUPVAL                         R20 22
      288 GETTABLEKS                       R20 R20 K8 ["useProducer"]
      290 MOVE                             R21 R14
      291 CALL                             R20 1 0
      292 GETUPVAL                         R20 23
      293 GETTABLEKS                       R20 R20 K8 ["useProducer"]
      295 MOVE                             R21 R15
      296 CALL                             R20 1 0
      297 GETUPVAL                         R20 24
      298 GETTABLEKS                       R20 R20 K8 ["useProducer"]
      300 MOVE                             R21 R16
      301 CALL                             R20 1 0
      302 GETUPVAL                         R20 25
      303 GETTABLEKS                       R20 R20 K8 ["useProducer"]
      305 MOVE                             R21 R17
      306 CALL                             R20 1 0
      307 GETUPVAL                         R20 26
      308 GETTABLEKS                       R20 R20 K8 ["useProducer"]
      310 MOVE                             R21 R18
      311 CALL                             R20 1 0
      312 GETUPVAL                         R20 0
      313 GETTABLEKS                       R20 R20 K9 ["createElement"]
      315 GETUPVAL                         R21 27
      316 GETTABLEKS                       R21 R21 K10 ["Provider"]
      318 DUPTABLE                         R22 K12 [{"value"}]
      319 SETTABLEKS                       R19 R22 K11 ["value"]
      321 GETTABLEKS                       R23 R0 K13 ["children"]
      323 CALL                             R20 3 -1
      324 RETURN                           R20 -1

PROTO_31:
        0 DUPTABLE                         R0 K12 [{"createStateMachineAsync", "deleteStateMachineAsync", "renameStateMachineAsync", "createStateAsync", "deleteStatesAsync", "moveStatesAsync", "renameStateAsync", "createTransitionAsync", "createStateAndTransitionAsync", "deleteTransitionAsync", "setTransitionFieldAsync", "stateMachines"}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["createStateMachineAsync"]
        4 GETUPVAL                         R1 1
        5 SETTABLEKS                       R1 R0 K1 ["deleteStateMachineAsync"]
        7 GETUPVAL                         R1 2
        8 SETTABLEKS                       R1 R0 K2 ["renameStateMachineAsync"]
       10 GETUPVAL                         R1 3
       11 SETTABLEKS                       R1 R0 K3 ["createStateAsync"]
       13 GETUPVAL                         R1 4
       14 SETTABLEKS                       R1 R0 K4 ["deleteStatesAsync"]
       16 GETUPVAL                         R1 5
       17 SETTABLEKS                       R1 R0 K5 ["moveStatesAsync"]
       19 GETUPVAL                         R1 6
       20 SETTABLEKS                       R1 R0 K6 ["renameStateAsync"]
       22 GETUPVAL                         R1 7
       23 SETTABLEKS                       R1 R0 K7 ["createTransitionAsync"]
       25 GETUPVAL                         R1 8
       26 SETTABLEKS                       R1 R0 K8 ["createStateAndTransitionAsync"]
       28 GETUPVAL                         R1 9
       29 SETTABLEKS                       R1 R0 K9 ["deleteTransitionAsync"]
       31 GETUPVAL                         R1 10
       32 SETTABLEKS                       R1 R0 K10 ["setTransitionFieldAsync"]
       34 GETUPVAL                         R1 11
       35 SETTABLEKS                       R1 R0 K11 ["stateMachines"]
       37 RETURN                           R0 1

PROTO_32:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useConsumer"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K0 ["useConsumer"]
        7 CALL                             R2 0 1
        8 GETUPVAL                         R3 2
        9 GETTABLEKS                       R3 R3 K0 ["useConsumer"]
       11 CALL                             R3 0 1
       12 GETUPVAL                         R4 3
       13 GETTABLEKS                       R4 R4 K0 ["useConsumer"]
       15 CALL                             R4 0 1
       16 GETUPVAL                         R5 4
       17 GETTABLEKS                       R5 R5 K0 ["useConsumer"]
       19 CALL                             R5 0 1
       20 GETUPVAL                         R6 5
       21 GETTABLEKS                       R6 R6 K0 ["useConsumer"]
       23 CALL                             R6 0 1
       24 GETUPVAL                         R7 6
       25 GETTABLEKS                       R7 R7 K0 ["useConsumer"]
       27 CALL                             R7 0 1
       28 GETUPVAL                         R8 7
       29 GETTABLEKS                       R8 R8 K0 ["useConsumer"]
       31 CALL                             R8 0 1
       32 GETUPVAL                         R9 8
       33 GETTABLEKS                       R9 R9 K0 ["useConsumer"]
       35 CALL                             R9 0 1
       36 GETUPVAL                         R10 9
       37 GETTABLEKS                       R10 R10 K0 ["useConsumer"]
       39 CALL                             R10 0 1
       40 GETUPVAL                         R11 10
       41 GETTABLEKS                       R11 R11 K0 ["useConsumer"]
       43 CALL                             R11 0 1
       44 GETUPVAL                         R12 11
       45 GETTABLEKS                       R12 R12 K0 ["useConsumer"]
       47 NEWTABLE                         R13 0 0
       49 CALL                             R12 1 1
       50 GETUPVAL                         R13 12
       51 GETTABLEKS                       R13 R13 K1 ["useMemo"]
       53 NEWCLOSURE                       R14 P0
       54 CAPTURE                          VAL R1
       55 CAPTURE                          VAL R2
       56 CAPTURE                          VAL R3
       57 CAPTURE                          VAL R4
       58 CAPTURE                          VAL R5
       59 CAPTURE                          VAL R6
       60 CAPTURE                          VAL R7
       61 CAPTURE                          VAL R8
       62 CAPTURE                          VAL R9
       63 CAPTURE                          VAL R10
       64 CAPTURE                          VAL R11
       65 CAPTURE                          VAL R12
       66 NEWTABLE                         R15 0 12
       68 MOVE                             R16 R1
       69 MOVE                             R17 R2
       70 MOVE                             R18 R3
       71 MOVE                             R19 R4
       72 MOVE                             R20 R5
       73 MOVE                             R21 R6
       74 MOVE                             R22 R7
       75 MOVE                             R23 R8
       76 MOVE                             R24 R9
       77 MOVE                             R25 R10
       78 MOVE                             R26 R11
       79 MOVE                             R27 R12
       80 SETLIST                          R15 R16 12 [1]
       82 CALL                             R13 2 1
       83 GETUPVAL                         R14 12
       84 GETTABLEKS                       R14 R14 K2 ["createElement"]
       86 GETUPVAL                         R15 13
       87 GETTABLEKS                       R15 R15 K3 ["Provider"]
       89 DUPTABLE                         R16 K5 [{"value"}]
       90 SETTABLEKS                       R13 R16 K4 ["value"]
       92 GETTABLEKS                       R17 R0 K6 ["children"]
       94 CALL                             R14 3 -1
       95 RETURN                           R14 -1

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
      149 GETTABLEKS                       R20 R6 K37 ["createReplicatedState"]
      151 LOADK                            R21 K38 ["StateMachineEditorContext_StateMachines"]
      152 CALL                             R20 1 1
      153 GETTABLEKS                       R21 R6 K39 ["createBoundAction"]
      155 LOADK                            R22 K40 ["StateMachineEditorContext_CreateAsync"]
      156 CALL                             R21 1 1
      157 GETTABLEKS                       R22 R6 K39 ["createBoundAction"]
      159 LOADK                            R23 K41 ["StateMachineEditorContext_DeleteAsync"]
      160 CALL                             R22 1 1
      161 GETTABLEKS                       R23 R6 K39 ["createBoundAction"]
      163 LOADK                            R24 K42 ["StateMachineEditorContext_RenameAsync"]
      164 CALL                             R23 1 1
      165 GETTABLEKS                       R24 R6 K39 ["createBoundAction"]
      167 LOADK                            R25 K43 ["StateMachineEditorContext_CreateStateAsync"]
      168 CALL                             R24 1 1
      169 GETTABLEKS                       R25 R6 K39 ["createBoundAction"]
      171 LOADK                            R26 K44 ["StateMachineEditorContext_DeleteStatesAsync"]
      172 CALL                             R25 1 1
      173 GETTABLEKS                       R26 R6 K39 ["createBoundAction"]
      175 LOADK                            R27 K45 ["StateMachineEditorContext_MoveStatesAsync"]
      176 CALL                             R26 1 1
      177 GETTABLEKS                       R27 R6 K39 ["createBoundAction"]
      179 LOADK                            R28 K46 ["StateMachineEditorContext_RenameStateAsync"]
      180 CALL                             R27 1 1
      181 GETTABLEKS                       R28 R6 K39 ["createBoundAction"]
      183 LOADK                            R29 K47 ["StateMachineEditorContext_CreateTransitionAsync"]
      184 CALL                             R28 1 1
      185 GETTABLEKS                       R29 R6 K39 ["createBoundAction"]
      187 LOADK                            R30 K48 ["StateMachineEditorContext_CreateStateAndTransitionAsync"]
      188 CALL                             R29 1 1
      189 GETTABLEKS                       R30 R6 K39 ["createBoundAction"]
      191 LOADK                            R31 K49 ["StateMachineEditorContext_DeleteTransitionAsync"]
      192 CALL                             R30 1 1
      193 GETTABLEKS                       R31 R6 K39 ["createBoundAction"]
      195 LOADK                            R32 K50 ["StateMachineEditorContext_SetTransitionFieldAsync"]
      196 CALL                             R31 1 1
      197 DUPTABLE                         R32 K63 [{"createStateMachineAsync", "deleteStateMachineAsync", "renameStateMachineAsync", "createStateAsync", "deleteStatesAsync", "moveStatesAsync", "renameStateAsync", "createTransitionAsync", "createStateAndTransitionAsync", "deleteTransitionAsync", "setTransitionFieldAsync", "stateMachines"}]
      198 GETTABLEKS                       R33 R8 K64 ["createUnimplemented"]
      200 LOADK                            R34 K51 ["createStateMachineAsync"]
      201 CALL                             R33 1 1
      202 SETTABLEKS                       R33 R32 K51 ["createStateMachineAsync"]
      204 GETTABLEKS                       R33 R8 K64 ["createUnimplemented"]
      206 LOADK                            R34 K52 ["deleteStateMachineAsync"]
      207 CALL                             R33 1 1
      208 SETTABLEKS                       R33 R32 K52 ["deleteStateMachineAsync"]
      210 GETTABLEKS                       R33 R8 K64 ["createUnimplemented"]
      212 LOADK                            R34 K53 ["renameStateMachineAsync"]
      213 CALL                             R33 1 1
      214 SETTABLEKS                       R33 R32 K53 ["renameStateMachineAsync"]
      216 GETTABLEKS                       R33 R8 K64 ["createUnimplemented"]
      218 LOADK                            R34 K54 ["createStateAsync"]
      219 CALL                             R33 1 1
      220 SETTABLEKS                       R33 R32 K54 ["createStateAsync"]
      222 GETTABLEKS                       R33 R8 K64 ["createUnimplemented"]
      224 LOADK                            R34 K55 ["deleteStatesAsync"]
      225 CALL                             R33 1 1
      226 SETTABLEKS                       R33 R32 K55 ["deleteStatesAsync"]
      228 GETTABLEKS                       R33 R8 K64 ["createUnimplemented"]
      230 LOADK                            R34 K56 ["moveStatesAsync"]
      231 CALL                             R33 1 1
      232 SETTABLEKS                       R33 R32 K56 ["moveStatesAsync"]
      234 GETTABLEKS                       R33 R8 K64 ["createUnimplemented"]
      236 LOADK                            R34 K57 ["renameStateAsync"]
      237 CALL                             R33 1 1
      238 SETTABLEKS                       R33 R32 K57 ["renameStateAsync"]
      240 GETTABLEKS                       R33 R8 K64 ["createUnimplemented"]
      242 LOADK                            R34 K58 ["createTransitionAsync"]
      243 CALL                             R33 1 1
      244 SETTABLEKS                       R33 R32 K58 ["createTransitionAsync"]
      246 GETTABLEKS                       R33 R8 K64 ["createUnimplemented"]
      248 LOADK                            R34 K59 ["createStateAndTransitionAsync"]
      249 CALL                             R33 1 1
      250 SETTABLEKS                       R33 R32 K59 ["createStateAndTransitionAsync"]
      252 GETTABLEKS                       R33 R8 K64 ["createUnimplemented"]
      254 LOADK                            R34 K60 ["deleteTransitionAsync"]
      255 CALL                             R33 1 1
      256 SETTABLEKS                       R33 R32 K60 ["deleteTransitionAsync"]
      258 GETTABLEKS                       R33 R8 K64 ["createUnimplemented"]
      260 LOADK                            R34 K61 ["setTransitionFieldAsync"]
      261 CALL                             R33 1 1
      262 SETTABLEKS                       R33 R32 K61 ["setTransitionFieldAsync"]
      264 NEWTABLE                         R33 0 0
      266 SETTABLEKS                       R33 R32 K62 ["stateMachines"]
      268 GETTABLEKS                       R33 R7 K65 ["createContext"]
      270 MOVE                             R34 R32
      271 CALL                             R33 1 1
      272 LOADK                            R34 K66 ["StateMachineEditorContext"]
      273 SETTABLEKS                       R34 R33 K67 ["displayName"]
      275 DUPCLOSURE                       R34 K68 [PROTO_1]
      276 CAPTURE                          VAL R16
      277 CAPTURE                          VAL R15
      278 CAPTURE                          VAL R10
      279 DUPCLOSURE                       R35 K69 [PROTO_30]
      280 CAPTURE                          VAL R7
      281 CAPTURE                          VAL R4
      282 CAPTURE                          VAL R18
      283 CAPTURE                          VAL R9
      284 CAPTURE                          VAL R3
      285 CAPTURE                          VAL R12
      286 CAPTURE                          VAL R13
      287 CAPTURE                          VAL R34
      288 CAPTURE                          VAL R10
      289 CAPTURE                          VAL R0
      290 CAPTURE                          VAL R17
      291 CAPTURE                          VAL R1
      292 CAPTURE                          VAL R15
      293 CAPTURE                          VAL R19
      294 CAPTURE                          VAL R5
      295 CAPTURE                          VAL R20
      296 CAPTURE                          VAL R21
      297 CAPTURE                          VAL R22
      298 CAPTURE                          VAL R23
      299 CAPTURE                          VAL R24
      300 CAPTURE                          VAL R25
      301 CAPTURE                          VAL R26
      302 CAPTURE                          VAL R27
      303 CAPTURE                          VAL R28
      304 CAPTURE                          VAL R29
      305 CAPTURE                          VAL R30
      306 CAPTURE                          VAL R31
      307 CAPTURE                          VAL R33
      308 DUPCLOSURE                       R36 K70 [PROTO_32]
      309 CAPTURE                          VAL R21
      310 CAPTURE                          VAL R22
      311 CAPTURE                          VAL R23
      312 CAPTURE                          VAL R24
      313 CAPTURE                          VAL R25
      314 CAPTURE                          VAL R26
      315 CAPTURE                          VAL R27
      316 CAPTURE                          VAL R28
      317 CAPTURE                          VAL R29
      318 CAPTURE                          VAL R30
      319 CAPTURE                          VAL R31
      320 CAPTURE                          VAL R20
      321 CAPTURE                          VAL R7
      322 CAPTURE                          VAL R33
      323 DUPTABLE                         R37 K74 [{"Context", "EditableDataModelProvider", "UIDataModelProvider"}]
      324 SETTABLEKS                       R33 R37 K71 ["Context"]
      326 SETTABLEKS                       R35 R37 K72 ["EditableDataModelProvider"]
      328 SETTABLEKS                       R36 R37 K73 ["UIDataModelProvider"]
      330 RETURN                           R37 1
