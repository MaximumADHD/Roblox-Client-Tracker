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
       38 GETUPVAL                         R9 9
       39 CALL                             R9 0 1
       40 JUMPIFNOT                        R9 ; [+2]
       41 LOADNIL                          R8
       42 JUMP                             ; [+2]
       43 GETTABLEKS                       R8 R0 K5 ["selectionService"]
       45 SETLIST                          R5 R6 3 [1]
       47 CALL                             R3 2 -1
       48 RETURN                           R3 -1

PROTO_10:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["setSelectedGraphInstance"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_11:
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
       15 GETUPVAL                         R3 1
       16 CALL                             R3 0 1
       17 JUMPIFNOT                        R3 ; [+6]
       18 GETUPVAL                         R2 2
       19 GETTABLEKS                       R2 R2 K5 ["observeSelectedGraphInstance"]
       21 LOADB                            R3 0
       22 CALL                             R2 1 1
       23 JUMP                             ; [+5]
       24 GETUPVAL                         R2 3
       25 GETTABLEKS                       R2 R2 K6 ["observeSelectedGraphInstance_DEPRECATED"]
       27 LOADB                            R3 0
       28 CALL                             R2 1 1
       29 JUMPIFNOTEQ                      R2 R1 ; [+2]
       31 RETURN                           R0 0
       32 GETUPVAL                         R3 4
       33 CALL                             R3 0 1
       34 JUMPIFNOT                        R3 ; [+5]
       35 GETUPVAL                         R3 5
       36 GETTABLEKS                       R3 R3 K7 ["updateGraphTimestamp"]
       38 MOVE                             R4 R1
       39 CALL                             R3 1 0
       40 GETUPVAL                         R3 1
       41 CALL                             R3 0 1
       42 JUMPIFNOT                        R3 ; [+12]
       43 LOADK                            R5 K8 ["AnimationGraphDefinition"]
       44 NAMECALL                         R3 R1 K9 ["IsA"]
       46 CALL                             R3 2 1
       47 JUMPIFNOT                        R3 ; [+18]
       48 GETIMPORT                        R3 K12 [task.spawn]
       50 NEWCLOSURE                       R4 P0
       51 CAPTURE                          UPVAL U2
       52 CAPTURE                          VAL R1
       53 CALL                             R3 1 0
       54 RETURN                           R0 0
       55 GETUPVAL                         R3 6
       56 GETTABLEKS                       R3 R3 K13 ["selectionService"]
       58 NEWTABLE                         R5 0 1
       60 MOVE                             R6 R1
       61 SETLIST                          R5 R6 1 [1]
       63 NAMECALL                         R3 R3 K14 ["Set"]
       65 CALL                             R3 2 0
       66 RETURN                           R0 0

PROTO_12:
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

PROTO_13:
        0 DUPTABLE                         R0 K4 [{"graphItems", "selectedGraphId_DEPRECATED", "selectGraphByIdAsync", "renameGraphByIdAsync"}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["graphItems"]
        4 GETUPVAL                         R2 1
        5 CALL                             R2 0 1
        6 JUMPIFNOT                        R2 ; [+2]
        7 LOADNIL                          R1
        8 JUMP                             ; [+1]
        9 GETUPVAL                         R1 2
       10 SETTABLEKS                       R1 R0 K1 ["selectedGraphId_DEPRECATED"]
       12 GETUPVAL                         R1 3
       13 SETTABLEKS                       R1 R0 K2 ["selectGraphByIdAsync"]
       15 GETUPVAL                         R1 4
       16 SETTABLEKS                       R1 R0 K3 ["renameGraphByIdAsync"]
       18 RETURN                           R0 1

PROTO_14:
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
       12 GETUPVAL                         R2 1
       13 GETTABLEKS                       R2 R2 K0 ["useContext"]
       15 GETUPVAL                         R3 3
       16 GETTABLEKS                       R3 R3 K1 ["Context"]
       18 CALL                             R2 1 1
       19 GETUPVAL                         R4 0
       20 CALL                             R4 0 1
       21 JUMPIFNOT                        R4 ; [+2]
       22 LOADNIL                          R3
       23 JUMP                             ; [+7]
       24 GETUPVAL                         R3 1
       25 GETTABLEKS                       R3 R3 K0 ["useContext"]
       27 GETUPVAL                         R4 4
       28 GETTABLEKS                       R4 R4 K1 ["Context"]
       30 CALL                             R3 1 1
       31 GETUPVAL                         R4 1
       32 GETTABLEKS                       R4 R4 K0 ["useContext"]
       34 GETUPVAL                         R5 5
       35 GETTABLEKS                       R5 R5 K1 ["Context"]
       37 CALL                             R4 1 1
       38 GETUPVAL                         R5 1
       39 GETTABLEKS                       R5 R5 K0 ["useContext"]
       41 GETUPVAL                         R6 6
       42 GETTABLEKS                       R6 R6 K1 ["Context"]
       44 CALL                             R5 1 1
       45 GETUPVAL                         R6 7
       46 GETTABLEKS                       R6 R6 K2 ["useSignalState"]
       48 GETUPVAL                         R7 8
       49 CALL                             R7 0 -1
       50 CALL                             R6 -1 1
       51 GETUPVAL                         R7 1
       52 GETTABLEKS                       R7 R7 K3 ["useCallback"]
       54 NEWCLOSURE                       R8 P0
       55 CAPTURE                          VAL R4
       56 CAPTURE                          UPVAL U0
       57 CAPTURE                          VAL R1
       58 CAPTURE                          VAL R2
       59 CAPTURE                          UPVAL U9
       60 CAPTURE                          VAL R5
       61 CAPTURE                          VAL R3
       62 NEWTABLE                         R9 0 3
       64 GETTABLEKS                       R10 R4 K4 ["instanceRegistry"]
       66 GETUPVAL                         R12 0
       67 CALL                             R12 0 1
       68 JUMPIFNOT                        R12 ; [+3]
       69 GETTABLEKS                       R11 R1 K5 ["setSelectedGraphInstance"]
       71 JUMP                             ; [+2]
       72 GETTABLEKS                       R11 R3 K6 ["selectionService"]
       74 GETUPVAL                         R13 0
       75 CALL                             R13 0 1
       76 JUMPIFNOT                        R13 ; [+3]
       77 GETTABLEKS                       R12 R1 K7 ["observeSelectedGraphInstance"]
       79 JUMP                             ; [+2]
       80 GETTABLEKS                       R12 R2 K8 ["observeSelectedGraphInstance_DEPRECATED"]
       82 SETLIST                          R9 R10 3 [1]
       84 CALL                             R7 2 1
       85 GETUPVAL                         R8 1
       86 GETTABLEKS                       R8 R8 K3 ["useCallback"]
       88 NEWCLOSURE                       R9 P1
       89 CAPTURE                          VAL R4
       90 NEWTABLE                         R10 0 1
       92 GETTABLEKS                       R11 R4 K4 ["instanceRegistry"]
       94 SETLIST                          R10 R11 1 [1]
       96 CALL                             R8 2 1
       97 GETUPVAL                         R10 0
       98 CALL                             R10 0 1
       99 JUMPIFNOT                        R10 ; [+2]
      100 LOADNIL                          R9
      101 JUMP                             ; [+2]
      102 GETTABLEKS                       R9 R2 K9 ["selectedGraphInstanceId_DEPRECATED"]
      104 GETUPVAL                         R10 10
      105 GETTABLEKS                       R10 R10 K10 ["useBoundAction"]
      107 GETUPVAL                         R11 11
      108 GETTABLEKS                       R11 R11 K11 ["SELECT_GRAPH_BY_ID_ASYNC"]
      110 MOVE                             R12 R7
      111 CALL                             R10 2 0
      112 GETUPVAL                         R10 10
      113 GETTABLEKS                       R10 R10 K10 ["useBoundAction"]
      115 GETUPVAL                         R11 11
      116 GETTABLEKS                       R11 R11 K12 ["RENAME_GRAPH_BY_ID_ASYNC"]
      118 MOVE                             R12 R8
      119 CALL                             R10 2 0
      120 GETUPVAL                         R10 10
      121 GETTABLEKS                       R10 R10 K13 ["useReplicatedState"]
      123 GETUPVAL                         R11 12
      124 GETTABLEKS                       R11 R11 K14 ["GRAPH_ITEMS"]
      126 MOVE                             R12 R6
      127 CALL                             R10 2 0
      128 GETUPVAL                         R10 0
      129 CALL                             R10 0 1
      130 JUMPIF                           R10 ; [+8]
      131 GETUPVAL                         R10 10
      132 GETTABLEKS                       R10 R10 K13 ["useReplicatedState"]
      134 GETUPVAL                         R11 12
      135 GETTABLEKS                       R11 R11 K15 ["SELECTED_GRAPH_ID_DEPRECATED"]
      137 MOVE                             R12 R9
      138 CALL                             R10 2 0
      139 GETUPVAL                         R10 1
      140 GETTABLEKS                       R10 R10 K16 ["useMemo"]
      142 NEWCLOSURE                       R11 P2
      143 CAPTURE                          VAL R6
      144 CAPTURE                          UPVAL U0
      145 CAPTURE                          VAL R9
      146 CAPTURE                          VAL R7
      147 CAPTURE                          VAL R8
      148 NEWTABLE                         R12 0 4
      150 MOVE                             R13 R6
      151 MOVE                             R14 R9
      152 MOVE                             R15 R7
      153 MOVE                             R16 R8
      154 SETLIST                          R12 R13 4 [1]
      156 CALL                             R10 2 1
      157 GETUPVAL                         R11 1
      158 GETTABLEKS                       R11 R11 K17 ["createElement"]
      160 GETUPVAL                         R12 13
      161 GETTABLEKS                       R12 R12 K18 ["Provider"]
      163 DUPTABLE                         R13 K20 [{"value"}]
      164 SETTABLEKS                       R10 R13 K19 ["value"]
      166 GETTABLEKS                       R14 R0 K21 ["children"]
      168 CALL                             R11 3 -1
      169 RETURN                           R11 -1

PROTO_15:
        0 DUPTABLE                         R0 K4 [{"graphItems", "selectedGraphId_DEPRECATED", "selectGraphByIdAsync", "renameGraphByIdAsync"}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["graphItems"]
        4 GETUPVAL                         R2 1
        5 CALL                             R2 0 1
        6 JUMPIFNOT                        R2 ; [+2]
        7 LOADNIL                          R1
        8 JUMP                             ; [+1]
        9 GETUPVAL                         R1 2
       10 SETTABLEKS                       R1 R0 K1 ["selectedGraphId_DEPRECATED"]
       12 GETUPVAL                         R1 3
       13 SETTABLEKS                       R1 R0 K2 ["selectGraphByIdAsync"]
       15 GETUPVAL                         R1 4
       16 SETTABLEKS                       R1 R0 K3 ["renameGraphByIdAsync"]
       18 RETURN                           R0 1

PROTO_16:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useReplicatedStateListener"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["GRAPH_ITEMS"]
        6 NEWTABLE                         R3 0 0
        8 CALL                             R1 2 1
        9 GETUPVAL                         R3 2
       10 CALL                             R3 0 1
       11 JUMPIFNOT                        R3 ; [+2]
       12 LOADNIL                          R2
       13 JUMP                             ; [+8]
       14 GETUPVAL                         R2 0
       15 GETTABLEKS                       R2 R2 K0 ["useReplicatedStateListener"]
       17 GETUPVAL                         R3 1
       18 GETTABLEKS                       R3 R3 K2 ["SELECTED_GRAPH_ID_DEPRECATED"]
       20 LOADNIL                          R4
       21 CALL                             R2 2 1
       22 GETUPVAL                         R3 0
       23 GETTABLEKS                       R3 R3 K3 ["useBoundAction"]
       25 GETUPVAL                         R4 3
       26 GETTABLEKS                       R4 R4 K4 ["SELECT_GRAPH_BY_ID_ASYNC"]
       28 CALL                             R3 1 1
       29 GETUPVAL                         R4 0
       30 GETTABLEKS                       R4 R4 K3 ["useBoundAction"]
       32 GETUPVAL                         R5 3
       33 GETTABLEKS                       R5 R5 K5 ["RENAME_GRAPH_BY_ID_ASYNC"]
       35 CALL                             R4 1 1
       36 GETUPVAL                         R5 4
       37 GETTABLEKS                       R5 R5 K6 ["useMemo"]
       39 NEWCLOSURE                       R6 P0
       40 CAPTURE                          VAL R1
       41 CAPTURE                          UPVAL U2
       42 CAPTURE                          VAL R2
       43 CAPTURE                          VAL R3
       44 CAPTURE                          VAL R4
       45 NEWTABLE                         R7 0 4
       47 MOVE                             R8 R1
       48 MOVE                             R9 R2
       49 MOVE                             R10 R3
       50 MOVE                             R11 R4
       51 SETLIST                          R7 R8 4 [1]
       53 CALL                             R5 2 1
       54 GETUPVAL                         R6 4
       55 GETTABLEKS                       R6 R6 K7 ["createElement"]
       57 GETUPVAL                         R7 5
       58 GETTABLEKS                       R7 R7 K8 ["Provider"]
       60 DUPTABLE                         R8 K10 [{"value"}]
       61 SETTABLEKS                       R5 R8 K9 ["value"]
       63 GETTABLEKS                       R9 R0 K11 ["children"]
       65 CALL                             R6 3 -1
       66 RETURN                           R6 -1

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
       70 GETTABLEKS                       R9 R9 K17 ["SelectedGraphContext"]
       72 CALL                             R8 1 1
       73 GETIMPORT                        R9 K5 [require]
       75 GETTABLEKS                       R10 R0 K6 ["Contexts"]
       77 GETTABLEKS                       R10 R10 K18 ["SelectionServiceContext"]
       79 CALL                             R9 1 1
       80 GETIMPORT                        R10 K5 [require]
       82 GETTABLEKS                       R11 R0 K11 ["Util"]
       84 GETTABLEKS                       R11 R11 K19 ["Signals"]
       86 GETTABLEKS                       R11 R11 K20 ["Experimental"]
       88 GETTABLEKS                       R11 R11 K21 ["SignalExperimentalUtils"]
       90 CALL                             R10 1 1
       91 GETIMPORT                        R11 K5 [require]
       93 GETTABLEKS                       R12 R0 K8 ["Parent"]
       95 GETTABLEKS                       R12 R12 K19 ["Signals"]
       97 CALL                             R11 1 1
       98 GETIMPORT                        R12 K5 [require]
      100 GETTABLEKS                       R13 R0 K11 ["Util"]
      102 GETTABLEKS                       R13 R13 K19 ["Signals"]
      104 GETTABLEKS                       R13 R13 K22 ["SignalsInstanceUtils"]
      106 CALL                             R12 1 1
      107 GETIMPORT                        R13 K5 [require]
      109 GETTABLEKS                       R14 R0 K8 ["Parent"]
      111 GETTABLEKS                       R14 R14 K23 ["SignalsReact"]
      113 CALL                             R13 1 1
      114 GETIMPORT                        R14 K5 [require]
      116 GETTABLEKS                       R15 R0 K11 ["Util"]
      118 GETTABLEKS                       R15 R15 K19 ["Signals"]
      120 GETTABLEKS                       R15 R15 K24 ["TypedInstanceSignals"]
      122 CALL                             R14 1 1
      123 GETIMPORT                        R15 K5 [require]
      125 GETTABLEKS                       R16 R0 K25 ["Flags"]
      127 GETTABLEKS                       R16 R16 K26 ["getFFlagAnimGraphUISortGraphElements"]
      129 CALL                             R15 1 1
      130 GETIMPORT                        R16 K5 [require]
      132 GETTABLEKS                       R17 R0 K25 ["Flags"]
      134 GETTABLEKS                       R17 R17 K27 ["getFFlagAnimGraphUI_RunTimeDebug"]
      136 CALL                             R16 1 1
      137 DUPTABLE                         R17 K32 [{"graphItems", "selectedGraphId_DEPRECATED", "selectGraphByIdAsync", "renameGraphByIdAsync"}]
      138 GETIMPORT                        R18 K35 [table.freeze]
      140 NEWTABLE                         R19 0 0
      142 CALL                             R18 1 1
      143 SETTABLEKS                       R18 R17 K28 ["graphItems"]
      145 LOADNIL                          R18
      146 SETTABLEKS                       R18 R17 K29 ["selectedGraphId_DEPRECATED"]
      148 GETTABLEKS                       R18 R6 K36 ["createUnimplemented"]
      150 LOADK                            R19 K30 ["selectGraphByIdAsync"]
      151 CALL                             R18 1 1
      152 SETTABLEKS                       R18 R17 K30 ["selectGraphByIdAsync"]
      154 GETTABLEKS                       R18 R6 K36 ["createUnimplemented"]
      156 LOADK                            R19 K31 ["renameGraphByIdAsync"]
      157 CALL                             R18 1 1
      158 SETTABLEKS                       R18 R17 K31 ["renameGraphByIdAsync"]
      160 GETTABLEKS                       R18 R5 K37 ["createContext"]
      162 MOVE                             R19 R17
      163 CALL                             R18 1 1
      164 DUPTABLE                         R19 K40 [{"GRAPH_ITEMS", "SELECTED_GRAPH_ID_DEPRECATED"}]
      165 LOADK                            R20 K41 ["GraphDropdownContext_GraphItems"]
      166 SETTABLEKS                       R20 R19 K38 ["GRAPH_ITEMS"]
      168 LOADK                            R20 K42 ["GraphDropdownContext_SelectedGraphId"]
      169 SETTABLEKS                       R20 R19 K39 ["SELECTED_GRAPH_ID_DEPRECATED"]
      171 DUPTABLE                         R20 K45 [{"SELECT_GRAPH_BY_ID_ASYNC", "RENAME_GRAPH_BY_ID_ASYNC"}]
      172 LOADK                            R21 K46 ["GraphDropdownContext_SelectGraphByIdAsync"]
      173 SETTABLEKS                       R21 R20 K43 ["SELECT_GRAPH_BY_ID_ASYNC"]
      175 LOADK                            R21 K47 ["GraphDropdownContext_RenameGraphByIdAsync"]
      176 SETTABLEKS                       R21 R20 K44 ["RENAME_GRAPH_BY_ID_ASYNC"]
      178 DUPCLOSURE                       R21 K48 [PROTO_9]
      179 CAPTURE                          VAL R5
      180 CAPTURE                          VAL R9
      181 CAPTURE                          VAL R7
      182 CAPTURE                          VAL R2
      183 CAPTURE                          VAL R12
      184 CAPTURE                          VAL R14
      185 CAPTURE                          VAL R10
      186 CAPTURE                          VAL R15
      187 CAPTURE                          VAL R1
      188 CAPTURE                          VAL R16
      189 DUPCLOSURE                       R22 K49 [PROTO_14]
      190 CAPTURE                          VAL R16
      191 CAPTURE                          VAL R5
      192 CAPTURE                          VAL R8
      193 CAPTURE                          VAL R3
      194 CAPTURE                          VAL R9
      195 CAPTURE                          VAL R2
      196 CAPTURE                          VAL R1
      197 CAPTURE                          VAL R13
      198 CAPTURE                          VAL R21
      199 CAPTURE                          VAL R15
      200 CAPTURE                          VAL R4
      201 CAPTURE                          VAL R20
      202 CAPTURE                          VAL R19
      203 CAPTURE                          VAL R18
      204 DUPCLOSURE                       R23 K50 [PROTO_16]
      205 CAPTURE                          VAL R4
      206 CAPTURE                          VAL R19
      207 CAPTURE                          VAL R16
      208 CAPTURE                          VAL R20
      209 CAPTURE                          VAL R5
      210 CAPTURE                          VAL R18
      211 DUPTABLE                         R24 K54 [{"Context", "EditableDataModelProvider", "UIDataModelProvider"}]
      212 SETTABLEKS                       R18 R24 K51 ["Context"]
      214 SETTABLEKS                       R22 R24 K52 ["EditableDataModelProvider"]
      216 SETTABLEKS                       R23 R24 K53 ["UIDataModelProvider"]
      218 RETURN                           R24 1
