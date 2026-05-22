PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["instanceRegistry"]
        3 GETTABLEKS                       R3 R0 K1 ["id"]
        5 NAMECALL                         R1 R1 K2 ["idToInstance"]
        7 CALL                             R1 2 1
        8 GETUPVAL                         R2 1
        9 GETTABLEKS                       R2 R2 K3 ["of"]
       11 MOVE                             R3 R1
       12 CALL                             R2 1 -1
       13 RETURN                           R2 -1

PROTO_1:
        0 JUMPIFNOTEQKNIL                  R0 ; [+7]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K0 ["of"]
        5 LOADNIL                          R2
        6 CALL                             R1 1 -1
        7 RETURN                           R1 -1
        8 GETUPVAL                         R1 0
        9 GETTABLEKS                       R1 R1 K1 ["observeFirstNamedChildWhichIsA"]
       11 MOVE                             R2 R0
       12 LOADK                            R3 K2 ["ObjectValue"]
       13 LOADK                            R4 K3 ["AnimSaves"]
       14 CALL                             R1 3 1
       15 RETURN                           R1 1

PROTO_2:
        0 JUMPIFNOTEQKNIL                  R0 ; [+7]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K0 ["of"]
        5 LOADNIL                          R2
        6 CALL                             R1 1 -1
        7 RETURN                           R1 -1
        8 GETUPVAL                         R1 1
        9 GETTABLEKS                       R1 R1 K1 ["properties"]
       11 GETTABLEKS                       R1 R1 K2 ["observeInstance"]
       13 MOVE                             R2 R0
       14 LOADK                            R3 K3 ["Value"]
       15 CALL                             R1 2 -1
       16 RETURN                           R1 -1

PROTO_3:
        0 JUMPIFNOTEQKNIL                  R0 ; [+8]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K0 ["of"]
        5 NEWTABLE                         R2 0 0
        7 CALL                             R1 1 -1
        8 RETURN                           R1 -1
        9 GETUPVAL                         R1 0
       10 GETTABLEKS                       R1 R1 K1 ["observeChildrenWhichIsA"]
       12 MOVE                             R2 R0
       13 LOADK                            R3 K2 ["AnimationGraphDefinition"]
       14 CALL                             R1 2 -1
       15 RETURN                           R1 -1

PROTO_4:
        0 GETTABLEKS                       R3 R0 K0 ["Name"]
        2 GETTABLEKS                       R4 R1 K0 ["Name"]
        4 JUMPIFLT                         R3 R4 ; [+2]
        6 LOADB                            R2 0 +1
        7 LOADB                            R2 1
        8 RETURN                           R2 1

PROTO_5:
        0 NEWTABLE                         R1 0 0
        2 GETUPVAL                         R2 0
        3 MOVE                             R3 R0
        4 CALL                             R2 1 3
        5 FORGPREP                         R2
        6 MOVE                             R7 R6
        7 LOADNIL                          R8
        8 LOADNIL                          R9
        9 FORGPREP                         R7
       10 LOADB                            R12 1
       11 SETTABLE                         R12 R1 R11
       12 FORGLOOP                         R7 2 ; [-3]
       14 FORGLOOP                         R2 2 ; [-9]
       16 NEWTABLE                         R2 0 0
       18 GETIMPORT                        R3 K1 [pairs]
       20 MOVE                             R4 R1
       21 CALL                             R3 1 3
       22 FORGPREP_NEXT                    R3
       23 FASTCALL2                        TABLE_INSERT R2 R6 ; [+5]
       25 MOVE                             R9 R2
       26 MOVE                             R10 R6
       27 GETIMPORT                        R8 K4 [table.insert]
       29 CALL                             R8 2 0
       30 FORGLOOP                         R3 2 ; [-8]
       32 GETIMPORT                        R3 K6 [table.sort]
       34 MOVE                             R4 R2
       35 DUPCLOSURE                       R5 K7 [PROTO_4]
       36 CALL                             R3 2 0
       37 RETURN                           R2 1

PROTO_6:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 CALL                             R2 1 1
        3 JUMPIFEQKB                       R2 TRUE ; [+2]
        5 LOADB                            R1 0 +1
        6 LOADB                            R1 1
        7 DUPTABLE                         R2 K4 [{"id", "text", "isDirty", "timestamp"}]
        8 GETUPVAL                         R3 1
        9 SETTABLEKS                       R3 R2 K0 ["id"]
       11 GETUPVAL                         R3 2
       12 MOVE                             R4 R0
       13 CALL                             R3 1 1
       14 SETTABLEKS                       R3 R2 K1 ["text"]
       16 SETTABLEKS                       R1 R2 K2 ["isDirty"]
       18 GETUPVAL                         R4 3
       19 CALL                             R4 0 1
       20 JUMPIFNOT                        R4 ; [+7]
       21 GETUPVAL                         R4 4
       22 JUMPIFNOT                        R4 ; [+5]
       23 GETUPVAL                         R4 4
       24 MOVE                             R5 R0
       25 CALL                             R4 1 1
       26 ORK                              R3 R4 K5 [0]
       27 JUMP                             ; [+1]
       28 LOADN                            R3 0
       29 SETTABLEKS                       R3 R2 K3 ["timestamp"]
       31 RETURN                           R2 1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["properties"]
        3 GETTABLEKS                       R1 R1 K1 ["observeString"]
        5 MOVE                             R2 R0
        6 LOADK                            R3 K2 ["Name"]
        7 CALL                             R1 2 1
        8 GETUPVAL                         R2 0
        9 GETTABLEKS                       R2 R2 K3 ["attributes"]
       11 GETTABLEKS                       R2 R2 K4 ["observeBoolean"]
       13 MOVE                             R3 R0
       14 LOADK                            R4 K5 ["RBX_GraphDirty"]
       15 CALL                             R2 2 1
       16 GETUPVAL                         R4 1
       17 CALL                             R4 0 1
       18 JUMPIFNOT                        R4 ; [+11]
       19 GETUPVAL                         R3 0
       20 GETTABLEKS                       R3 R3 K3 ["attributes"]
       22 GETTABLEKS                       R3 R3 K6 ["observeNumber"]
       24 MOVE                             R4 R0
       25 GETUPVAL                         R5 2
       26 GETTABLEKS                       R5 R5 K7 ["TIMESTAMP_ATTRIBUTE_NAME"]
       28 CALL                             R3 2 1
       29 JUMP                             ; [+1]
       30 LOADNIL                          R3
       31 GETUPVAL                         R4 3
       32 GETTABLEKS                       R4 R4 K8 ["instanceRegistry"]
       34 MOVE                             R6 R0
       35 NAMECALL                         R4 R4 K9 ["instanceToId"]
       37 CALL                             R4 2 1
       38 GETUPVAL                         R5 4
       39 GETTABLEKS                       R5 R5 K10 ["createComputed"]
       41 NEWCLOSURE                       R6 P0
       42 CAPTURE                          VAL R2
       43 CAPTURE                          VAL R4
       44 CAPTURE                          VAL R1
       45 CAPTURE                          UPVAL U1
       46 CAPTURE                          VAL R3
       47 CALL                             R5 1 -1
       48 RETURN                           R5 -1

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["forEach"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["observeRigReferences"]
        6 NEWCLOSURE                       R2 P0
        7 CAPTURE                          UPVAL U2
        8 CAPTURE                          UPVAL U0
        9 CALL                             R0 2 1
       10 GETUPVAL                         R1 0
       11 GETTABLEKS                       R1 R1 K0 ["forEach"]
       13 MOVE                             R2 R0
       14 DUPCLOSURE                       R3 K2 [PROTO_1]
       15 CAPTURE                          UPVAL U0
       16 CALL                             R1 2 1
       17 GETUPVAL                         R2 0
       18 GETTABLEKS                       R2 R2 K0 ["forEach"]
       20 MOVE                             R3 R1
       21 DUPCLOSURE                       R4 K3 [PROTO_2]
       22 CAPTURE                          UPVAL U0
       23 CAPTURE                          UPVAL U3
       24 CALL                             R2 2 1
       25 GETUPVAL                         R3 0
       26 GETTABLEKS                       R3 R3 K0 ["forEach"]
       28 MOVE                             R4 R2
       29 DUPCLOSURE                       R5 K4 [PROTO_3]
       30 CAPTURE                          UPVAL U0
       31 CALL                             R3 2 1
       32 GETUPVAL                         R4 4
       33 GETTABLEKS                       R4 R4 K5 ["createComputed"]
       35 NEWCLOSURE                       R5 P4
       36 CAPTURE                          VAL R3
       37 CALL                             R4 1 1
       38 GETUPVAL                         R5 0
       39 GETTABLEKS                       R5 R5 K0 ["forEach"]
       41 MOVE                             R6 R4
       42 NEWCLOSURE                       R7 P5
       43 CAPTURE                          UPVAL U3
       44 CAPTURE                          UPVAL U5
       45 CAPTURE                          UPVAL U6
       46 CAPTURE                          UPVAL U2
       47 CAPTURE                          UPVAL U4
       48 CALL                             R5 2 1
       49 RETURN                           R5 1

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["useContext"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["Context"]
        6 CALL                             R0 1 1
        7 GETUPVAL                         R1 0
        8 GETTABLEKS                       R1 R1 K0 ["useContext"]
       10 GETUPVAL                         R2 2
       11 GETTABLEKS                       R2 R2 K1 ["Context"]
       13 CALL                             R1 1 1
       14 GETUPVAL                         R2 0
       15 GETTABLEKS                       R2 R2 K0 ["useContext"]
       17 GETUPVAL                         R3 3
       18 GETTABLEKS                       R3 R3 K1 ["Context"]
       20 CALL                             R2 1 1
       21 GETUPVAL                         R3 0
       22 GETTABLEKS                       R3 R3 K2 ["useMemo"]
       24 NEWCLOSURE                       R4 P0
       25 CAPTURE                          UPVAL U4
       26 CAPTURE                          VAL R1
       27 CAPTURE                          VAL R2
       28 CAPTURE                          UPVAL U5
       29 CAPTURE                          UPVAL U6
       30 CAPTURE                          UPVAL U7
       31 CAPTURE                          UPVAL U8
       32 NEWTABLE                         R5 0 3
       34 GETTABLEKS                       R6 R1 K3 ["observeRigReferences"]
       36 GETTABLEKS                       R7 R2 K4 ["instanceRegistry"]
       38 GETTABLEKS                       R8 R0 K5 ["selectionService"]
       40 SETLIST                          R5 R6 3 [1]
       42 CALL                             R3 2 -1
       43 RETURN                           R3 -1

PROTO_10:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["instanceRegistry"]
        3 MOVE                             R3 R0
        4 NAMECALL                         R1 R1 K1 ["idToInstance"]
        6 CALL                             R1 2 1
        7 JUMPIFNOTEQKNIL                  R1 ; [+7]
        9 GETIMPORT                        R2 K3 [warn]
       11 LOADK                            R3 K4 ["GraphDropdownContext: selectGraphByIdAsync: No instance found with id"]
       12 MOVE                             R4 R0
       13 CALL                             R2 2 0
       14 RETURN                           R0 0
       15 GETUPVAL                         R2 1
       16 GETTABLEKS                       R2 R2 K5 ["observeSelectedGraphInstance"]
       18 LOADB                            R3 0
       19 CALL                             R2 1 1
       20 JUMPIFNOTEQ                      R2 R1 ; [+2]
       22 RETURN                           R0 0
       23 GETUPVAL                         R2 2
       24 CALL                             R2 0 1
       25 JUMPIFNOT                        R2 ; [+5]
       26 GETUPVAL                         R2 3
       27 GETTABLEKS                       R2 R2 K6 ["updateGraphTimestamp"]
       29 MOVE                             R3 R1
       30 CALL                             R2 1 0
       31 GETUPVAL                         R2 4
       32 GETTABLEKS                       R2 R2 K7 ["selectionService"]
       34 NEWTABLE                         R4 0 1
       36 MOVE                             R5 R1
       37 SETLIST                          R4 R5 1 [1]
       39 NAMECALL                         R2 R2 K8 ["Set"]
       41 CALL                             R2 2 0
       42 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["instanceRegistry"]
        3 MOVE                             R4 R0
        4 NAMECALL                         R2 R2 K1 ["idToInstance"]
        6 CALL                             R2 2 1
        7 JUMPIFNOTEQKNIL                  R2 ; [+7]
        9 GETIMPORT                        R3 K3 [warn]
       11 LOADK                            R4 K4 ["GraphDropdownContext: renameGraphByIdAsync: No instance found with id"]
       12 MOVE                             R5 R0
       13 CALL                             R3 2 0
       14 RETURN                           R0 0
       15 SETTABLEKS                       R1 R2 K5 ["Name"]
       17 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K0 ["useContext"]
       10 GETUPVAL                         R3 2
       11 GETTABLEKS                       R3 R3 K1 ["Context"]
       13 CALL                             R2 1 1
       14 GETUPVAL                         R3 0
       15 GETTABLEKS                       R3 R3 K0 ["useContext"]
       17 GETUPVAL                         R4 3
       18 GETTABLEKS                       R4 R4 K1 ["Context"]
       20 CALL                             R3 1 1
       21 GETUPVAL                         R4 0
       22 GETTABLEKS                       R4 R4 K0 ["useContext"]
       24 GETUPVAL                         R5 4
       25 GETTABLEKS                       R5 R5 K1 ["Context"]
       27 CALL                             R4 1 1
       28 GETUPVAL                         R5 5
       29 GETTABLEKS                       R5 R5 K2 ["useSignalState"]
       31 GETUPVAL                         R6 6
       32 CALL                             R6 0 -1
       33 CALL                             R5 -1 1
       34 GETUPVAL                         R6 0
       35 GETTABLEKS                       R6 R6 K3 ["useCallback"]
       37 NEWCLOSURE                       R7 P0
       38 CAPTURE                          VAL R3
       39 CAPTURE                          VAL R1
       40 CAPTURE                          UPVAL U7
       41 CAPTURE                          VAL R4
       42 CAPTURE                          VAL R2
       43 NEWTABLE                         R8 0 3
       45 GETTABLEKS                       R9 R3 K4 ["instanceRegistry"]
       47 GETTABLEKS                       R10 R2 K5 ["selectionService"]
       49 GETTABLEKS                       R11 R1 K6 ["observeSelectedGraphInstance"]
       51 SETLIST                          R8 R9 3 [1]
       53 CALL                             R6 2 1
       54 GETUPVAL                         R7 0
       55 GETTABLEKS                       R7 R7 K3 ["useCallback"]
       57 NEWCLOSURE                       R8 P1
       58 CAPTURE                          VAL R3
       59 NEWTABLE                         R9 0 1
       61 GETTABLEKS                       R10 R3 K4 ["instanceRegistry"]
       63 SETLIST                          R9 R10 1 [1]
       65 CALL                             R7 2 1
       66 GETTABLEKS                       R8 R1 K7 ["selectedGraphInstanceId"]
       68 GETUPVAL                         R9 8
       69 GETTABLEKS                       R9 R9 K8 ["useBoundAction"]
       71 GETUPVAL                         R10 9
       72 GETTABLEKS                       R10 R10 K9 ["SELECT_GRAPH_BY_ID_ASYNC"]
       74 MOVE                             R11 R6
       75 CALL                             R9 2 0
       76 GETUPVAL                         R9 8
       77 GETTABLEKS                       R9 R9 K8 ["useBoundAction"]
       79 GETUPVAL                         R10 9
       80 GETTABLEKS                       R10 R10 K10 ["RENAME_GRAPH_BY_ID_ASYNC"]
       82 MOVE                             R11 R7
       83 CALL                             R9 2 0
       84 GETUPVAL                         R9 8
       85 GETTABLEKS                       R9 R9 K11 ["useReplicatedState"]
       87 GETUPVAL                         R10 10
       88 GETTABLEKS                       R10 R10 K12 ["GRAPH_ITEMS"]
       90 MOVE                             R11 R5
       91 CALL                             R9 2 0
       92 GETUPVAL                         R9 8
       93 GETTABLEKS                       R9 R9 K11 ["useReplicatedState"]
       95 GETUPVAL                         R10 10
       96 GETTABLEKS                       R10 R10 K13 ["SELECTED_GRAPH_ID"]
       98 MOVE                             R11 R8
       99 CALL                             R9 2 0
      100 DUPTABLE                         R9 K18 [{"graphItems", "selectedGraphId", "selectGraphByIdAsync", "renameGraphByIdAsync"}]
      101 SETTABLEKS                       R5 R9 K14 ["graphItems"]
      103 SETTABLEKS                       R8 R9 K15 ["selectedGraphId"]
      105 SETTABLEKS                       R6 R9 K16 ["selectGraphByIdAsync"]
      107 SETTABLEKS                       R7 R9 K17 ["renameGraphByIdAsync"]
      109 GETUPVAL                         R10 0
      110 GETTABLEKS                       R10 R10 K19 ["createElement"]
      112 GETUPVAL                         R11 11
      113 GETTABLEKS                       R11 R11 K20 ["Provider"]
      115 DUPTABLE                         R12 K22 [{"value"}]
      116 SETTABLEKS                       R9 R12 K21 ["value"]
      118 GETTABLEKS                       R13 R0 K23 ["children"]
      120 CALL                             R10 3 -1
      121 RETURN                           R10 -1

PROTO_13:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useReplicatedStateListener"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["GRAPH_ITEMS"]
        6 NEWTABLE                         R3 0 0
        8 CALL                             R1 2 1
        9 GETUPVAL                         R2 0
       10 GETTABLEKS                       R2 R2 K0 ["useReplicatedStateListener"]
       12 GETUPVAL                         R3 1
       13 GETTABLEKS                       R3 R3 K2 ["SELECTED_GRAPH_ID"]
       15 LOADNIL                          R4
       16 CALL                             R2 2 1
       17 DUPTABLE                         R3 K7 [{"graphItems", "selectedGraphId", "selectGraphByIdAsync", "renameGraphByIdAsync"}]
       18 SETTABLEKS                       R1 R3 K3 ["graphItems"]
       20 SETTABLEKS                       R2 R3 K4 ["selectedGraphId"]
       22 GETUPVAL                         R4 0
       23 GETTABLEKS                       R4 R4 K8 ["useBoundAction"]
       25 GETUPVAL                         R5 2
       26 GETTABLEKS                       R5 R5 K9 ["SELECT_GRAPH_BY_ID_ASYNC"]
       28 CALL                             R4 1 1
       29 SETTABLEKS                       R4 R3 K5 ["selectGraphByIdAsync"]
       31 GETUPVAL                         R4 0
       32 GETTABLEKS                       R4 R4 K8 ["useBoundAction"]
       34 GETUPVAL                         R5 2
       35 GETTABLEKS                       R5 R5 K10 ["RENAME_GRAPH_BY_ID_ASYNC"]
       37 CALL                             R4 1 1
       38 SETTABLEKS                       R4 R3 K6 ["renameGraphByIdAsync"]
       40 GETUPVAL                         R4 3
       41 GETTABLEKS                       R4 R4 K11 ["createElement"]
       43 GETUPVAL                         R5 4
       44 GETTABLEKS                       R5 R5 K12 ["Provider"]
       46 DUPTABLE                         R6 K14 [{"value"}]
       47 SETTABLEKS                       R3 R6 K13 ["value"]
       49 GETTABLEKS                       R7 R0 K15 ["children"]
       51 CALL                             R4 3 -1
       52 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Contexts"]
       11 GETTABLEKS                       R2 R2 K7 ["GraphTimestampContext"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETIMPORT                        R3 K1 [script]
       18 GETTABLEKS                       R3 R3 K8 ["Parent"]
       20 GETTABLEKS                       R3 R3 K9 ["InstanceRegistryContext"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K6 ["Contexts"]
       27 GETTABLEKS                       R4 R4 K10 ["NativeGraphContext"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K11 ["Util"]
       34 GETTABLEKS                       R5 R5 K12 ["Networking"]
       36 GETTABLEKS                       R5 R5 K13 ["NetworkUtils"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K5 [require]
       41 GETTABLEKS                       R6 R0 K8 ["Parent"]
       43 GETTABLEKS                       R6 R6 K14 ["React"]
       45 CALL                             R5 1 1
       46 GETIMPORT                        R6 K5 [require]
       48 GETIMPORT                        R7 K1 [script]
       50 GETTABLEKS                       R7 R7 K8 ["Parent"]
       52 GETTABLEKS                       R7 R7 K8 ["Parent"]
       54 GETTABLEKS                       R7 R7 K8 ["Parent"]
       56 GETTABLEKS                       R7 R7 K15 ["ReactUtils"]
       58 CALL                             R6 1 1
       59 GETIMPORT                        R7 K5 [require]
       61 GETTABLEKS                       R8 R0 K6 ["Contexts"]
       63 GETTABLEKS                       R8 R8 K16 ["RigListContext"]
       65 CALL                             R7 1 1
       66 GETIMPORT                        R8 K5 [require]
       68 GETTABLEKS                       R9 R0 K6 ["Contexts"]
       70 GETTABLEKS                       R9 R9 K17 ["SelectionServiceContext"]
       72 CALL                             R8 1 1
       73 GETIMPORT                        R9 K5 [require]
       75 GETTABLEKS                       R10 R0 K11 ["Util"]
       77 GETTABLEKS                       R10 R10 K18 ["Signals"]
       79 GETTABLEKS                       R10 R10 K19 ["Experimental"]
       81 GETTABLEKS                       R10 R10 K20 ["SignalExperimentalUtils"]
       83 CALL                             R9 1 1
       84 GETIMPORT                        R10 K5 [require]
       86 GETTABLEKS                       R11 R0 K8 ["Parent"]
       88 GETTABLEKS                       R11 R11 K18 ["Signals"]
       90 CALL                             R10 1 1
       91 GETIMPORT                        R11 K5 [require]
       93 GETTABLEKS                       R12 R0 K11 ["Util"]
       95 GETTABLEKS                       R12 R12 K18 ["Signals"]
       97 GETTABLEKS                       R12 R12 K21 ["SignalsInstanceUtils"]
       99 CALL                             R11 1 1
      100 GETIMPORT                        R12 K5 [require]
      102 GETTABLEKS                       R13 R0 K8 ["Parent"]
      104 GETTABLEKS                       R13 R13 K22 ["SignalsReact"]
      106 CALL                             R12 1 1
      107 GETIMPORT                        R13 K5 [require]
      109 GETTABLEKS                       R14 R0 K11 ["Util"]
      111 GETTABLEKS                       R14 R14 K18 ["Signals"]
      113 GETTABLEKS                       R14 R14 K23 ["TypedInstanceSignals"]
      115 CALL                             R13 1 1
      116 GETIMPORT                        R14 K5 [require]
      118 GETTABLEKS                       R15 R0 K24 ["Flags"]
      120 GETTABLEKS                       R15 R15 K25 ["getFFlagAnimGraphUISortGraphElements"]
      122 CALL                             R14 1 1
      123 DUPTABLE                         R15 K30 [{"graphItems", "selectedGraphId", "selectGraphByIdAsync", "renameGraphByIdAsync"}]
      124 GETIMPORT                        R16 K33 [table.freeze]
      126 NEWTABLE                         R17 0 0
      128 CALL                             R16 1 1
      129 SETTABLEKS                       R16 R15 K26 ["graphItems"]
      131 LOADNIL                          R16
      132 SETTABLEKS                       R16 R15 K27 ["selectedGraphId"]
      134 GETTABLEKS                       R16 R6 K34 ["createUnimplemented"]
      136 LOADK                            R17 K28 ["selectGraphByIdAsync"]
      137 CALL                             R16 1 1
      138 SETTABLEKS                       R16 R15 K28 ["selectGraphByIdAsync"]
      140 GETTABLEKS                       R16 R6 K34 ["createUnimplemented"]
      142 LOADK                            R17 K29 ["renameGraphByIdAsync"]
      143 CALL                             R16 1 1
      144 SETTABLEKS                       R16 R15 K29 ["renameGraphByIdAsync"]
      146 GETTABLEKS                       R16 R5 K35 ["createContext"]
      148 MOVE                             R17 R15
      149 CALL                             R16 1 1
      150 DUPTABLE                         R17 K38 [{"GRAPH_ITEMS", "SELECTED_GRAPH_ID"}]
      151 LOADK                            R18 K39 ["GraphDropdownContext_GraphItems"]
      152 SETTABLEKS                       R18 R17 K36 ["GRAPH_ITEMS"]
      154 LOADK                            R18 K40 ["GraphDropdownContext_SelectedGraphId"]
      155 SETTABLEKS                       R18 R17 K37 ["SELECTED_GRAPH_ID"]
      157 DUPTABLE                         R18 K43 [{"SELECT_GRAPH_BY_ID_ASYNC", "RENAME_GRAPH_BY_ID_ASYNC"}]
      158 LOADK                            R19 K44 ["GraphDropdownContext_SelectGraphByIdAsync"]
      159 SETTABLEKS                       R19 R18 K41 ["SELECT_GRAPH_BY_ID_ASYNC"]
      161 LOADK                            R19 K45 ["GraphDropdownContext_RenameGraphByIdAsync"]
      162 SETTABLEKS                       R19 R18 K42 ["RENAME_GRAPH_BY_ID_ASYNC"]
      164 DUPCLOSURE                       R19 K46 [PROTO_9]
      165 CAPTURE                          VAL R5
      166 CAPTURE                          VAL R8
      167 CAPTURE                          VAL R7
      168 CAPTURE                          VAL R2
      169 CAPTURE                          VAL R11
      170 CAPTURE                          VAL R13
      171 CAPTURE                          VAL R9
      172 CAPTURE                          VAL R14
      173 CAPTURE                          VAL R1
      174 DUPCLOSURE                       R20 K47 [PROTO_12]
      175 CAPTURE                          VAL R5
      176 CAPTURE                          VAL R3
      177 CAPTURE                          VAL R8
      178 CAPTURE                          VAL R2
      179 CAPTURE                          VAL R1
      180 CAPTURE                          VAL R12
      181 CAPTURE                          VAL R19
      182 CAPTURE                          VAL R14
      183 CAPTURE                          VAL R4
      184 CAPTURE                          VAL R18
      185 CAPTURE                          VAL R17
      186 CAPTURE                          VAL R16
      187 DUPCLOSURE                       R21 K48 [PROTO_13]
      188 CAPTURE                          VAL R4
      189 CAPTURE                          VAL R17
      190 CAPTURE                          VAL R18
      191 CAPTURE                          VAL R5
      192 CAPTURE                          VAL R16
      193 DUPTABLE                         R22 K52 [{"Context", "EditableDataModelProvider", "UIDataModelProvider"}]
      194 SETTABLEKS                       R16 R22 K49 ["Context"]
      196 SETTABLEKS                       R20 R22 K50 ["EditableDataModelProvider"]
      198 SETTABLEKS                       R21 R22 K51 ["UIDataModelProvider"]
      200 RETURN                           R22 1
