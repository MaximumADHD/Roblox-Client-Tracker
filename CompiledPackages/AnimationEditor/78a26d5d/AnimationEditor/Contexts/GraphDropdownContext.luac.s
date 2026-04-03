PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["instanceRegistry"]
        3 GETTABLEKS                       R3 R0 K1 ["id"]
        5 NAMECALL                         R1 R1 K2 ["idToInstance"]
        7 CALL                             R1 2 1
        8 GETUPVAL                         R3 1
        9 GETTABLEKS                       R2 R3 K3 ["of"]
       11 MOVE                             R3 R1
       12 CALL                             R2 1 -1
       13 RETURN                           R2 -1

PROTO_1:
        0 JUMPIFNOTEQKNIL                  R0 ; [+7]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R1 R2 K0 ["of"]
        5 LOADNIL                          R2
        6 CALL                             R1 1 -1
        7 RETURN                           R1 -1
        8 GETUPVAL                         R2 0
        9 GETTABLEKS                       R1 R2 K1 ["observeFirstNamedChildWhichIsA"]
       11 MOVE                             R2 R0
       12 LOADK                            R3 K2 ["ObjectValue"]
       13 LOADK                            R4 K3 ["AnimSaves"]
       14 CALL                             R1 3 1
       15 RETURN                           R1 1

PROTO_2:
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
       14 LOADK                            R3 K3 ["Value"]
       15 CALL                             R1 2 -1
       16 RETURN                           R1 -1

PROTO_3:
        0 JUMPIFNOTEQKNIL                  R0 ; [+8]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R1 R2 K0 ["of"]
        5 NEWTABLE                         R2 0 0
        7 CALL                             R1 1 -1
        8 RETURN                           R1 -1
        9 GETUPVAL                         R2 0
       10 GETTABLEKS                       R1 R2 K1 ["observeChildrenWhichIsA"]
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
        7 DUPTABLE                         R2 K3 [{"id", "text", "isDirty"}]
        8 GETUPVAL                         R3 1
        9 SETTABLEKS                       R3 R2 K0 ["id"]
       11 GETUPVAL                         R3 2
       12 MOVE                             R4 R0
       13 CALL                             R3 1 1
       14 SETTABLEKS                       R3 R2 K1 ["text"]
       16 SETTABLEKS                       R1 R2 K2 ["isDirty"]
       18 RETURN                           R2 1

PROTO_7:
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
       16 GETUPVAL                         R4 1
       17 GETTABLEKS                       R3 R4 K6 ["instanceRegistry"]
       19 MOVE                             R5 R0
       20 NAMECALL                         R3 R3 K7 ["instanceToId"]
       22 CALL                             R3 2 1
       23 GETUPVAL                         R5 2
       24 GETTABLEKS                       R4 R5 K8 ["createComputed"]
       26 NEWCLOSURE                       R5 P0
       27 CAPTURE                          VAL R2
       28 CAPTURE                          VAL R3
       29 CAPTURE                          VAL R1
       30 CALL                             R4 1 -1
       31 RETURN                           R4 -1

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["forEach"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R1 R2 K1 ["observeRigReferences"]
        6 NEWCLOSURE                       R2 P0
        7 CAPTURE                          UPVAL U2
        8 CAPTURE                          UPVAL U0
        9 CALL                             R0 2 1
       10 GETUPVAL                         R2 0
       11 GETTABLEKS                       R1 R2 K0 ["forEach"]
       13 MOVE                             R2 R0
       14 DUPCLOSURE                       R3 K2 [PROTO_1]
       15 CAPTURE                          UPVAL U0
       16 CALL                             R1 2 1
       17 GETUPVAL                         R3 0
       18 GETTABLEKS                       R2 R3 K0 ["forEach"]
       20 MOVE                             R3 R1
       21 DUPCLOSURE                       R4 K3 [PROTO_2]
       22 CAPTURE                          UPVAL U0
       23 CAPTURE                          UPVAL U3
       24 CALL                             R2 2 1
       25 GETUPVAL                         R4 0
       26 GETTABLEKS                       R3 R4 K0 ["forEach"]
       28 MOVE                             R4 R2
       29 DUPCLOSURE                       R5 K4 [PROTO_3]
       30 CAPTURE                          UPVAL U0
       31 CALL                             R3 2 1
       32 GETUPVAL                         R5 4
       33 GETTABLEKS                       R4 R5 K5 ["createComputed"]
       35 NEWCLOSURE                       R5 P4
       36 CAPTURE                          VAL R3
       37 CALL                             R4 1 1
       38 GETUPVAL                         R6 0
       39 GETTABLEKS                       R5 R6 K0 ["forEach"]
       41 MOVE                             R6 R4
       42 NEWCLOSURE                       R7 P5
       43 CAPTURE                          UPVAL U3
       44 CAPTURE                          UPVAL U2
       45 CAPTURE                          UPVAL U4
       46 CALL                             R5 2 1
       47 RETURN                           R5 1

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R1 R2 K1 ["Context"]
        6 CALL                             R0 1 1
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R1 R2 K0 ["useContext"]
       10 GETUPVAL                         R3 2
       11 GETTABLEKS                       R2 R3 K1 ["Context"]
       13 CALL                             R1 1 1
       14 GETUPVAL                         R3 0
       15 GETTABLEKS                       R2 R3 K0 ["useContext"]
       17 GETUPVAL                         R4 3
       18 GETTABLEKS                       R3 R4 K1 ["Context"]
       20 CALL                             R2 1 1
       21 GETUPVAL                         R4 0
       22 GETTABLEKS                       R3 R4 K2 ["useMemo"]
       24 NEWCLOSURE                       R4 P0
       25 CAPTURE                          UPVAL U4
       26 CAPTURE                          VAL R1
       27 CAPTURE                          VAL R2
       28 CAPTURE                          UPVAL U5
       29 CAPTURE                          UPVAL U6
       30 NEWTABLE                         R5 0 3
       32 GETTABLEKS                       R6 R1 K3 ["observeRigReferences"]
       34 GETTABLEKS                       R7 R2 K4 ["instanceRegistry"]
       36 GETTABLEKS                       R8 R0 K5 ["selectionService"]
       38 SETLIST                          R5 R6 3 [1]
       40 CALL                             R3 2 -1
       41 RETURN                           R3 -1

PROTO_10:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["instanceRegistry"]
        3 MOVE                             R3 R0
        4 NAMECALL                         R1 R1 K1 ["idToInstance"]
        6 CALL                             R1 2 1
        7 JUMPIFNOTEQKNIL                  R1 ; [+7]
        9 GETIMPORT                        R2 K3 [warn]
       11 LOADK                            R3 K4 ["GraphDropdownContext: selectGraphByIdAsync: No instance found with id"]
       12 MOVE                             R4 R0
       13 CALL                             R2 2 0
       14 RETURN                           R0 0
       15 GETUPVAL                         R3 1
       16 GETTABLEKS                       R2 R3 K5 ["observeSelectedGraphInstance"]
       18 LOADB                            R3 0
       19 CALL                             R2 1 1
       20 JUMPIFNOTEQ                      R2 R1 ; [+2]
       22 RETURN                           R0 0
       23 GETUPVAL                         R3 2
       24 GETTABLEKS                       R2 R3 K6 ["selectionService"]
       26 NEWTABLE                         R4 0 1
       28 MOVE                             R5 R1
       29 SETLIST                          R4 R5 1 [1]
       31 NAMECALL                         R2 R2 K7 ["Set"]
       33 CALL                             R2 2 0
       34 RETURN                           R0 0

PROTO_11:
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
       15 GETTABLEKS                       R3 R4 K0 ["useContext"]
       17 GETUPVAL                         R5 3
       18 GETTABLEKS                       R4 R5 K1 ["Context"]
       20 CALL                             R3 1 1
       21 GETUPVAL                         R5 4
       22 GETTABLEKS                       R4 R5 K2 ["useSignalState"]
       24 GETUPVAL                         R5 5
       25 CALL                             R5 0 -1
       26 CALL                             R4 -1 1
       27 GETUPVAL                         R6 0
       28 GETTABLEKS                       R5 R6 K3 ["useCallback"]
       30 NEWCLOSURE                       R6 P0
       31 CAPTURE                          VAL R3
       32 CAPTURE                          VAL R1
       33 CAPTURE                          VAL R2
       34 NEWTABLE                         R7 0 3
       36 GETTABLEKS                       R8 R3 K4 ["instanceRegistry"]
       38 GETTABLEKS                       R9 R2 K5 ["selectionService"]
       40 GETTABLEKS                       R10 R1 K6 ["observeSelectedGraphInstance"]
       42 SETLIST                          R7 R8 3 [1]
       44 CALL                             R5 2 1
       45 GETTABLEKS                       R6 R1 K7 ["selectedGraphInstanceId"]
       47 GETUPVAL                         R8 6
       48 GETTABLEKS                       R7 R8 K8 ["useBoundAction"]
       50 GETUPVAL                         R9 7
       51 GETTABLEKS                       R8 R9 K9 ["SELECT_GRAPH_BY_ID_ASYNC"]
       53 MOVE                             R9 R5
       54 CALL                             R7 2 0
       55 GETUPVAL                         R8 6
       56 GETTABLEKS                       R7 R8 K10 ["useReplicatedState"]
       58 GETUPVAL                         R9 8
       59 GETTABLEKS                       R8 R9 K11 ["GRAPH_ITEMS"]
       61 MOVE                             R9 R4
       62 CALL                             R7 2 0
       63 GETUPVAL                         R8 6
       64 GETTABLEKS                       R7 R8 K10 ["useReplicatedState"]
       66 GETUPVAL                         R9 8
       67 GETTABLEKS                       R8 R9 K12 ["SELECTED_GRAPH_ID"]
       69 MOVE                             R9 R6
       70 CALL                             R7 2 0
       71 DUPTABLE                         R7 K16 [{"graphItems", "selectedGraphId", "selectGraphByIdAsync"}]
       72 SETTABLEKS                       R4 R7 K13 ["graphItems"]
       74 SETTABLEKS                       R6 R7 K14 ["selectedGraphId"]
       76 SETTABLEKS                       R5 R7 K15 ["selectGraphByIdAsync"]
       78 GETUPVAL                         R9 0
       79 GETTABLEKS                       R8 R9 K17 ["createElement"]
       81 GETUPVAL                         R10 9
       82 GETTABLEKS                       R9 R10 K18 ["Provider"]
       84 DUPTABLE                         R10 K20 [{"value"}]
       85 SETTABLEKS                       R7 R10 K19 ["value"]
       87 GETTABLEKS                       R11 R0 K21 ["children"]
       89 CALL                             R8 3 -1
       90 RETURN                           R8 -1

PROTO_12:
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
        9 GETIMPORT                        R4 K1 [script]
       11 GETTABLEKS                       R3 R4 K6 ["Parent"]
       13 GETTABLEKS                       R2 R3 K7 ["InstanceRegistryContext"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R4 R0 K8 ["Contexts"]
       20 GETTABLEKS                       R3 R4 K9 ["NativeGraphContext"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R6 R0 K10 ["Util"]
       27 GETTABLEKS                       R5 R6 K11 ["Networking"]
       29 GETTABLEKS                       R4 R5 K12 ["NetworkUtils"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R6 R0 K6 ["Parent"]
       36 GETTABLEKS                       R5 R6 K13 ["React"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K5 [require]
       41 GETIMPORT                        R10 K1 [script]
       43 GETTABLEKS                       R9 R10 K6 ["Parent"]
       45 GETTABLEKS                       R8 R9 K6 ["Parent"]
       47 GETTABLEKS                       R7 R8 K6 ["Parent"]
       49 GETTABLEKS                       R6 R7 K14 ["ReactUtils"]
       51 CALL                             R5 1 1
       52 GETIMPORT                        R6 K5 [require]
       54 GETTABLEKS                       R8 R0 K8 ["Contexts"]
       56 GETTABLEKS                       R7 R8 K15 ["RigListContext"]
       58 CALL                             R6 1 1
       59 GETIMPORT                        R7 K5 [require]
       61 GETTABLEKS                       R9 R0 K8 ["Contexts"]
       63 GETTABLEKS                       R8 R9 K16 ["SelectionServiceContext"]
       65 CALL                             R7 1 1
       66 GETIMPORT                        R8 K5 [require]
       68 GETTABLEKS                       R12 R0 K10 ["Util"]
       70 GETTABLEKS                       R11 R12 K17 ["Signals"]
       72 GETTABLEKS                       R10 R11 K18 ["Experimental"]
       74 GETTABLEKS                       R9 R10 K19 ["SignalExperimentalUtils"]
       76 CALL                             R8 1 1
       77 GETIMPORT                        R9 K5 [require]
       79 GETTABLEKS                       R11 R0 K6 ["Parent"]
       81 GETTABLEKS                       R10 R11 K17 ["Signals"]
       83 CALL                             R9 1 1
       84 GETIMPORT                        R10 K5 [require]
       86 GETTABLEKS                       R13 R0 K10 ["Util"]
       88 GETTABLEKS                       R12 R13 K17 ["Signals"]
       90 GETTABLEKS                       R11 R12 K20 ["SignalsInstanceUtils"]
       92 CALL                             R10 1 1
       93 GETIMPORT                        R11 K5 [require]
       95 GETTABLEKS                       R13 R0 K6 ["Parent"]
       97 GETTABLEKS                       R12 R13 K21 ["SignalsReact"]
       99 CALL                             R11 1 1
      100 GETIMPORT                        R12 K5 [require]
      102 GETTABLEKS                       R15 R0 K10 ["Util"]
      104 GETTABLEKS                       R14 R15 K17 ["Signals"]
      106 GETTABLEKS                       R13 R14 K22 ["TypedInstanceSignals"]
      108 CALL                             R12 1 1
      109 DUPTABLE                         R13 K26 [{"graphItems", "selectedGraphId", "selectGraphByIdAsync"}]
      110 GETIMPORT                        R14 K29 [table.freeze]
      112 NEWTABLE                         R15 0 0
      114 CALL                             R14 1 1
      115 SETTABLEKS                       R14 R13 K23 ["graphItems"]
      117 LOADNIL                          R14
      118 SETTABLEKS                       R14 R13 K24 ["selectedGraphId"]
      120 GETTABLEKS                       R14 R5 K30 ["createUnimplemented"]
      122 LOADK                            R15 K25 ["selectGraphByIdAsync"]
      123 CALL                             R14 1 1
      124 SETTABLEKS                       R14 R13 K25 ["selectGraphByIdAsync"]
      126 GETTABLEKS                       R14 R4 K31 ["createContext"]
      128 MOVE                             R15 R13
      129 CALL                             R14 1 1
      130 DUPTABLE                         R15 K34 [{"GRAPH_ITEMS", "SELECTED_GRAPH_ID"}]
      131 LOADK                            R16 K35 ["GraphDropdownContext_GraphItems"]
      132 SETTABLEKS                       R16 R15 K32 ["GRAPH_ITEMS"]
      134 LOADK                            R16 K36 ["GraphDropdownContext_SelectedGraphId"]
      135 SETTABLEKS                       R16 R15 K33 ["SELECTED_GRAPH_ID"]
      137 DUPTABLE                         R16 K38 [{"SELECT_GRAPH_BY_ID_ASYNC"}]
      138 LOADK                            R17 K39 ["GraphDropdownContext_SelectGraphByIdAsync"]
      139 SETTABLEKS                       R17 R16 K37 ["SELECT_GRAPH_BY_ID_ASYNC"]
      141 DUPCLOSURE                       R17 K40 [PROTO_9]
      142 CAPTURE                          VAL R4
      143 CAPTURE                          VAL R7
      144 CAPTURE                          VAL R6
      145 CAPTURE                          VAL R1
      146 CAPTURE                          VAL R10
      147 CAPTURE                          VAL R12
      148 CAPTURE                          VAL R8
      149 DUPCLOSURE                       R18 K41 [PROTO_11]
      150 CAPTURE                          VAL R4
      151 CAPTURE                          VAL R2
      152 CAPTURE                          VAL R7
      153 CAPTURE                          VAL R1
      154 CAPTURE                          VAL R11
      155 CAPTURE                          VAL R17
      156 CAPTURE                          VAL R3
      157 CAPTURE                          VAL R16
      158 CAPTURE                          VAL R15
      159 CAPTURE                          VAL R14
      160 DUPCLOSURE                       R19 K42 [PROTO_12]
      161 CAPTURE                          VAL R3
      162 CAPTURE                          VAL R15
      163 CAPTURE                          VAL R16
      164 CAPTURE                          VAL R4
      165 CAPTURE                          VAL R14
      166 DUPTABLE                         R20 K46 [{"Context", "EditableDataModelProvider", "UIDataModelProvider"}]
      167 SETTABLEKS                       R14 R20 K43 ["Context"]
      169 SETTABLEKS                       R18 R20 K44 ["EditableDataModelProvider"]
      171 SETTABLEKS                       R19 R20 K45 ["UIDataModelProvider"]
      173 RETURN                           R20 1
