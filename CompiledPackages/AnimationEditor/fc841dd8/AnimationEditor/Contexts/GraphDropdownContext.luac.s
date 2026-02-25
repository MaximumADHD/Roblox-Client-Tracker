PROTO_0:
        0 JUMPIFNOTEQKNIL                  R0 ; [+7]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R1 R2 K0 ["of"]
        5 LOADNIL                          R2
        6 CALL                             R1 1 -1
        7 RETURN                           R1 -1
        8 GETUPVAL                         R3 1
        9 GETTABLEKS                       R2 R3 K1 ["properties"]
       11 GETTABLEKS                       R1 R2 K2 ["observeInstance"]
       13 MOVE                             R2 R0
       14 LOADK                            R3 K3 ["Parent"]
       15 CALL                             R1 2 -1
       16 RETURN                           R1 -1

PROTO_1:
        0 JUMPIFNOTEQKNIL                  R0 ; [+8]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R1 R2 K0 ["of"]
        5 NEWTABLE                         R2 0 0
        7 CALL                             R1 1 -1
        8 RETURN                           R1 -1
        9 FASTCALL1                        TYPEOF R0 ; [+3]
       10 MOVE                             R4 R0
       11 GETIMPORT                        R3 K2 [typeof]
       13 CALL                             R3 1 1
       14 JUMPIFEQKS                       R3 K3 ["Instance"] ; [+2]
       16 LOADB                            R2 0 +1
       17 LOADB                            R2 1
       18 FASTCALL2K                       ASSERT R2 K4 ; [+4]
       20 LOADK                            R3 K4 ["Parent is not Instance"]
       21 GETIMPORT                        R1 K6 [assert]
       23 CALL                             R1 2 0
       24 GETUPVAL                         R2 0
       25 GETTABLEKS                       R1 R2 K7 ["observeChildrenWhichIsA"]
       27 MOVE                             R2 R0
       28 LOADK                            R3 K8 ["AnimationGraphDefinition"]
       29 CALL                             R1 2 -1
       30 RETURN                           R1 -1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 CALL                             R2 1 1
        3 JUMPIFEQKB                       R2 TRUE ; [+2]
        5 LOADB                            R1 0 +1
        6 LOADB                            R1 1
        7 DUPTABLE                         R2 K3 [{"id", "text", "isDirty"}]
        8 GETUPVAL                         R3 1
        9 SETTABLEKS                       R3 R2 K0 ["id"]
       11 GETUPVAL                         R3 2
       12 MOVE                             R4 R0
       13 CALL                             R3 1 1
       14 SETTABLEKS                       R3 R2 K1 ["text"]
       16 SETTABLEKS                       R1 R2 K2 ["isDirty"]
       18 RETURN                           R2 1

PROTO_3:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["properties"]
        3 GETTABLEKS                       R1 R2 K1 ["observeString"]
        5 MOVE                             R2 R0
        6 LOADK                            R3 K2 ["Name"]
        7 CALL                             R1 2 1
        8 GETUPVAL                         R4 0
        9 GETTABLEKS                       R3 R4 K3 ["attributes"]
       11 GETTABLEKS                       R2 R3 K4 ["observeBoolean"]
       13 MOVE                             R3 R0
       14 LOADK                            R4 K5 ["RBX_GraphDirty"]
       15 CALL                             R2 2 1
       16 GETUPVAL                         R3 1
       17 MOVE                             R5 R0
       18 NAMECALL                         R3 R3 K6 ["instanceToId"]
       20 CALL                             R3 2 1
       21 GETUPVAL                         R5 2
       22 GETTABLEKS                       R4 R5 K7 ["createComputed"]
       24 NEWCLOSURE                       R5 P0
       25 CAPTURE                          VAL R2
       26 CAPTURE                          VAL R3
       27 CAPTURE                          VAL R1
       28 CALL                             R4 1 -1
       29 RETURN                           R4 -1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["switchMap"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R1 R2 K1 ["observeSelectedGraphInstance"]
        6 DUPCLOSURE                       R2 K2 [PROTO_0]
        7 CAPTURE                          UPVAL U0
        8 CAPTURE                          UPVAL U2
        9 CALL                             R0 2 1
       10 GETUPVAL                         R2 0
       11 GETTABLEKS                       R1 R2 K0 ["switchMap"]
       13 MOVE                             R2 R0
       14 DUPCLOSURE                       R3 K3 [PROTO_1]
       15 CAPTURE                          UPVAL U0
       16 CALL                             R1 2 1
       17 GETUPVAL                         R3 0
       18 GETTABLEKS                       R2 R3 K4 ["forEach"]
       20 MOVE                             R3 R1
       21 NEWCLOSURE                       R4 P2
       22 CAPTURE                          UPVAL U2
       23 CAPTURE                          UPVAL U3
       24 CAPTURE                          UPVAL U4
       25 CALL                             R2 2 1
       26 RETURN                           R2 1

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useContext"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R2 R3 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R2 R3 K0 ["useContext"]
       10 GETUPVAL                         R4 2
       11 GETTABLEKS                       R3 R4 K1 ["Context"]
       13 CALL                             R2 1 1
       14 GETUPVAL                         R4 0
       15 GETTABLEKS                       R3 R4 K2 ["useMemo"]
       17 NEWCLOSURE                       R4 P0
       18 CAPTURE                          UPVAL U3
       19 CAPTURE                          VAL R1
       20 CAPTURE                          UPVAL U4
       21 CAPTURE                          VAL R0
       22 CAPTURE                          UPVAL U5
       23 NEWTABLE                         R5 0 3
       25 GETTABLEKS                       R6 R1 K3 ["observeSelectedGraphInstance"]
       27 MOVE                             R7 R0
       28 GETTABLEKS                       R8 R2 K4 ["selectionService"]
       30 SETLIST                          R5 R6 3 [1]
       32 CALL                             R3 2 -1
       33 RETURN                           R3 -1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["new"]
        3 CALL                             R0 0 -1
        4 RETURN                           R0 -1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["idToInstance"]
        4 CALL                             R1 2 1
        5 JUMPIFNOTEQKNIL                  R1 ; [+7]
        7 GETIMPORT                        R2 K2 [warn]
        9 LOADK                            R3 K3 ["GraphDropdownContext: selectGraphByIdAsync: No instance found with id"]
       10 MOVE                             R4 R0
       11 CALL                             R2 2 0
       12 RETURN                           R0 0
       13 GETUPVAL                         R3 1
       14 GETTABLEKS                       R2 R3 K4 ["selectedGraphInstance"]
       16 JUMPIFNOTEQ                      R2 R1 ; [+2]
       18 RETURN                           R0 0
       19 GETUPVAL                         R3 2
       20 GETTABLEKS                       R2 R3 K5 ["selectionService"]
       22 NEWTABLE                         R4 0 1
       24 MOVE                             R5 R1
       25 SETLIST                          R4 R5 1 [1]
       27 NAMECALL                         R2 R2 K6 ["Set"]
       29 CALL                             R2 2 0
       30 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["selectedGraphInstance"]
        3 JUMPIFNOTEQKNIL                  R0 ; [+3]
        5 LOADNIL                          R0
        6 RETURN                           R0 1
        7 GETUPVAL                         R0 1
        8 GETUPVAL                         R3 0
        9 GETTABLEKS                       R2 R3 K0 ["selectedGraphInstance"]
       11 NAMECALL                         R0 R0 K1 ["instanceToId"]
       13 CALL                             R0 2 -1
       14 RETURN                           R0 -1

PROTO_9:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useContext"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R2 R3 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R2 R3 K0 ["useContext"]
       10 GETUPVAL                         R4 2
       11 GETTABLEKS                       R3 R4 K1 ["Context"]
       13 CALL                             R2 1 1
       14 GETUPVAL                         R4 0
       15 GETTABLEKS                       R3 R4 K2 ["useMemo"]
       17 DUPCLOSURE                       R4 K3 [PROTO_6]
       18 CAPTURE                          UPVAL U3
       19 NEWTABLE                         R5 0 0
       21 CALL                             R3 2 1
       22 GETUPVAL                         R5 4
       23 GETTABLEKS                       R4 R5 K4 ["useSignalState"]
       25 GETUPVAL                         R5 5
       26 MOVE                             R6 R3
       27 CALL                             R5 1 -1
       28 CALL                             R4 -1 1
       29 GETUPVAL                         R6 0
       30 GETTABLEKS                       R5 R6 K5 ["useCallback"]
       32 NEWCLOSURE                       R6 P1
       33 CAPTURE                          VAL R3
       34 CAPTURE                          VAL R1
       35 CAPTURE                          VAL R2
       36 NEWTABLE                         R7 0 3
       38 MOVE                             R8 R3
       39 GETTABLEKS                       R9 R2 K6 ["selectionService"]
       41 GETTABLEKS                       R10 R1 K7 ["selectedGraphInstance"]
       43 SETLIST                          R7 R8 3 [1]
       45 CALL                             R5 2 1
       46 GETUPVAL                         R7 0
       47 GETTABLEKS                       R6 R7 K2 ["useMemo"]
       49 NEWCLOSURE                       R7 P2
       50 CAPTURE                          VAL R1
       51 CAPTURE                          VAL R3
       52 NEWTABLE                         R8 0 2
       54 GETTABLEKS                       R9 R1 K7 ["selectedGraphInstance"]
       56 MOVE                             R10 R3
       57 SETLIST                          R8 R9 2 [1]
       59 CALL                             R6 2 1
       60 GETUPVAL                         R8 6
       61 GETTABLEKS                       R7 R8 K8 ["useBoundAction"]
       63 GETUPVAL                         R9 7
       64 GETTABLEKS                       R8 R9 K9 ["SELECT_GRAPH_BY_ID_ASYNC"]
       66 MOVE                             R9 R5
       67 CALL                             R7 2 0
       68 GETUPVAL                         R8 6
       69 GETTABLEKS                       R7 R8 K10 ["useReplicatedState"]
       71 GETUPVAL                         R9 8
       72 GETTABLEKS                       R8 R9 K11 ["GRAPH_ITEMS"]
       74 MOVE                             R9 R4
       75 CALL                             R7 2 0
       76 GETUPVAL                         R8 6
       77 GETTABLEKS                       R7 R8 K10 ["useReplicatedState"]
       79 GETUPVAL                         R9 8
       80 GETTABLEKS                       R8 R9 K12 ["SELECTED_GRAPH_ID"]
       82 MOVE                             R9 R6
       83 CALL                             R7 2 0
       84 DUPTABLE                         R7 K16 [{"graphItems", "selectedGraphId", "selectGraphByIdAsync"}]
       85 SETTABLEKS                       R4 R7 K13 ["graphItems"]
       87 SETTABLEKS                       R6 R7 K14 ["selectedGraphId"]
       89 SETTABLEKS                       R5 R7 K15 ["selectGraphByIdAsync"]
       91 GETUPVAL                         R9 0
       92 GETTABLEKS                       R8 R9 K17 ["createElement"]
       94 GETUPVAL                         R10 9
       95 GETTABLEKS                       R9 R10 K18 ["Provider"]
       97 DUPTABLE                         R10 K20 [{"value"}]
       98 SETTABLEKS                       R7 R10 K19 ["value"]
      100 GETTABLEKS                       R11 R0 K21 ["children"]
      102 CALL                             R8 3 -1
      103 RETURN                           R8 -1

PROTO_10:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useReplicatedStateListener"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R2 R3 K1 ["GRAPH_ITEMS"]
        6 NEWTABLE                         R3 0 0
        8 CALL                             R1 2 1
        9 GETUPVAL                         R3 0
       10 GETTABLEKS                       R2 R3 K0 ["useReplicatedStateListener"]
       12 GETUPVAL                         R4 1
       13 GETTABLEKS                       R3 R4 K2 ["SELECTED_GRAPH_ID"]
       15 LOADNIL                          R4
       16 CALL                             R2 2 1
       17 DUPTABLE                         R3 K6 [{"graphItems", "selectedGraphId", "selectGraphByIdAsync"}]
       18 SETTABLEKS                       R1 R3 K3 ["graphItems"]
       20 SETTABLEKS                       R2 R3 K4 ["selectedGraphId"]
       22 GETUPVAL                         R5 0
       23 GETTABLEKS                       R4 R5 K7 ["useBoundAction"]
       25 GETUPVAL                         R6 2
       26 GETTABLEKS                       R5 R6 K8 ["SELECT_GRAPH_BY_ID_ASYNC"]
       28 CALL                             R4 1 1
       29 SETTABLEKS                       R4 R3 K5 ["selectGraphByIdAsync"]
       31 GETUPVAL                         R5 3
       32 GETTABLEKS                       R4 R5 K9 ["createElement"]
       34 GETUPVAL                         R6 4
       35 GETTABLEKS                       R5 R6 K10 ["Provider"]
       37 DUPTABLE                         R6 K12 [{"value"}]
       38 SETTABLEKS                       R3 R6 K11 ["value"]
       40 GETTABLEKS                       R7 R0 K13 ["children"]
       42 CALL                             R4 3 -1
       43 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R4 R0 K6 ["Util"]
       11 GETTABLEKS                       R3 R4 K7 ["Instances"]
       13 GETTABLEKS                       R2 R3 K8 ["InstanceRegistry"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R4 R0 K9 ["Contexts"]
       20 GETTABLEKS                       R3 R4 K10 ["NativeGraphContext"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R6 R0 K6 ["Util"]
       27 GETTABLEKS                       R5 R6 K11 ["Networking"]
       29 GETTABLEKS                       R4 R5 K12 ["NetworkUtils"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R6 R0 K13 ["Parent"]
       36 GETTABLEKS                       R5 R6 K14 ["React"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K5 [require]
       41 GETIMPORT                        R10 K1 [script]
       43 GETTABLEKS                       R9 R10 K13 ["Parent"]
       45 GETTABLEKS                       R8 R9 K13 ["Parent"]
       47 GETTABLEKS                       R7 R8 K13 ["Parent"]
       49 GETTABLEKS                       R6 R7 K15 ["ReactUtils"]
       51 CALL                             R5 1 1
       52 GETIMPORT                        R6 K5 [require]
       54 GETTABLEKS                       R8 R0 K9 ["Contexts"]
       56 GETTABLEKS                       R7 R8 K16 ["SelectionServiceContext"]
       58 CALL                             R6 1 1
       59 GETIMPORT                        R7 K5 [require]
       61 GETTABLEKS                       R9 R0 K13 ["Parent"]
       63 GETTABLEKS                       R8 R9 K17 ["Signals"]
       65 CALL                             R7 1 1
       66 GETIMPORT                        R8 K5 [require]
       68 GETTABLEKS                       R11 R0 K6 ["Util"]
       70 GETTABLEKS                       R10 R11 K17 ["Signals"]
       72 GETTABLEKS                       R9 R10 K18 ["SignalsInstanceUtils"]
       74 CALL                             R8 1 1
       75 GETIMPORT                        R9 K5 [require]
       77 GETTABLEKS                       R11 R0 K13 ["Parent"]
       79 GETTABLEKS                       R10 R11 K19 ["SignalsReact"]
       81 CALL                             R9 1 1
       82 GETIMPORT                        R10 K5 [require]
       84 GETTABLEKS                       R13 R0 K6 ["Util"]
       86 GETTABLEKS                       R12 R13 K17 ["Signals"]
       88 GETTABLEKS                       R11 R12 K20 ["TypedInstanceSignals"]
       90 CALL                             R10 1 1
       91 DUPTABLE                         R11 K24 [{"graphItems", "selectedGraphId", "selectGraphByIdAsync"}]
       92 GETIMPORT                        R12 K27 [table.freeze]
       94 NEWTABLE                         R13 0 0
       96 CALL                             R12 1 1
       97 SETTABLEKS                       R12 R11 K21 ["graphItems"]
       99 LOADNIL                          R12
      100 SETTABLEKS                       R12 R11 K22 ["selectedGraphId"]
      102 GETTABLEKS                       R12 R5 K28 ["createUnimplemented"]
      104 LOADK                            R13 K23 ["selectGraphByIdAsync"]
      105 CALL                             R12 1 1
      106 SETTABLEKS                       R12 R11 K23 ["selectGraphByIdAsync"]
      108 GETTABLEKS                       R12 R4 K29 ["createContext"]
      110 MOVE                             R13 R11
      111 CALL                             R12 1 1
      112 DUPTABLE                         R13 K32 [{"GRAPH_ITEMS", "SELECTED_GRAPH_ID"}]
      113 LOADK                            R14 K33 ["GraphDropdownContext_GraphItems"]
      114 SETTABLEKS                       R14 R13 K30 ["GRAPH_ITEMS"]
      116 LOADK                            R14 K34 ["GraphDropdownContext_SelectedGraphId"]
      117 SETTABLEKS                       R14 R13 K31 ["SELECTED_GRAPH_ID"]
      119 DUPTABLE                         R14 K36 [{"SELECT_GRAPH_BY_ID_ASYNC"}]
      120 LOADK                            R15 K37 ["GraphDropdownContext_SelectGraphByIdAsync"]
      121 SETTABLEKS                       R15 R14 K35 ["SELECT_GRAPH_BY_ID_ASYNC"]
      123 DUPCLOSURE                       R15 K38 [PROTO_5]
      124 CAPTURE                          VAL R4
      125 CAPTURE                          VAL R2
      126 CAPTURE                          VAL R6
      127 CAPTURE                          VAL R8
      128 CAPTURE                          VAL R10
      129 CAPTURE                          VAL R7
      130 DUPCLOSURE                       R16 K39 [PROTO_9]
      131 CAPTURE                          VAL R4
      132 CAPTURE                          VAL R2
      133 CAPTURE                          VAL R6
      134 CAPTURE                          VAL R1
      135 CAPTURE                          VAL R9
      136 CAPTURE                          VAL R15
      137 CAPTURE                          VAL R3
      138 CAPTURE                          VAL R14
      139 CAPTURE                          VAL R13
      140 CAPTURE                          VAL R12
      141 DUPCLOSURE                       R17 K40 [PROTO_10]
      142 CAPTURE                          VAL R3
      143 CAPTURE                          VAL R13
      144 CAPTURE                          VAL R14
      145 CAPTURE                          VAL R4
      146 CAPTURE                          VAL R12
      147 DUPTABLE                         R18 K44 [{"Context", "EditableDataModelProvider", "UIDataModelProvider"}]
      148 SETTABLEKS                       R12 R18 K41 ["Context"]
      150 SETTABLEKS                       R16 R18 K42 ["EditableDataModelProvider"]
      152 SETTABLEKS                       R17 R18 K43 ["UIDataModelProvider"]
      154 RETURN                           R18 1
