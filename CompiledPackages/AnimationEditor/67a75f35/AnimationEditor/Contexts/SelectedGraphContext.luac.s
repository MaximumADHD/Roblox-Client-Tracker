PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["observeEditingAnimationGraphDefinition"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 -1
        5 RETURN                           R0 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 JUMPIFNOT                        R1 ; [+8]
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K0 ["instanceRegistry"]
        7 MOVE                             R4 R1
        8 NAMECALL                         R2 R2 K1 ["instanceToId"]
       10 CALL                             R2 2 -1
       11 RETURN                           R2 -1
       12 LOADNIL                          R2
       13 RETURN                           R2 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createComputed"]
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CALL                             R0 1 -1
        7 RETURN                           R0 -1

PROTO_3:
        0 JUMPIFNOT                        R0 ; [+12]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K0 ["selectionService"]
        4 NEWTABLE                         R3 0 1
        6 MOVE                             R4 R0
        7 SETLIST                          R3 R4 1 [1]
        9 NAMECALL                         R1 R1 K1 ["Set"]
       11 CALL                             R1 2 0
       12 RETURN                           R0 0
       13 GETUPVAL                         R1 0
       14 GETTABLEKS                       R1 R1 K0 ["selectionService"]
       16 NEWTABLE                         R3 0 0
       18 NAMECALL                         R1 R1 K1 ["Set"]
       20 CALL                             R1 2 0
       21 RETURN                           R0 0

PROTO_4:
        0 MOVE                             R1 R0
        1 JUMPIFNOT                        R1 ; [+7]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K0 ["instanceRegistry"]
        5 MOVE                             R3 R0
        6 NAMECALL                         R1 R1 K1 ["idToInstance"]
        8 CALL                             R1 2 1
        9 JUMPIFNOT                        R1 ; [+9]
       10 LOADK                            R4 K2 ["AnimationGraphDefinition"]
       11 NAMECALL                         R2 R1 K3 ["IsA"]
       13 CALL                             R2 2 1
       14 JUMPIFNOT                        R2 ; [+4]
       15 GETUPVAL                         R2 1
       16 MOVE                             R3 R1
       17 CALL                             R2 1 0
       18 RETURN                           R0 0
       19 GETUPVAL                         R2 1
       20 LOADNIL                          R3
       21 CALL                             R2 1 0
       22 RETURN                           R0 0

PROTO_5:
        0 DUPTABLE                         R0 K4 [{"observeSelectedGraphInstance", "setSelectedGraphInstance", "observeSelectedGraphInstanceId", "setSelectedGraphInstanceIdAsync"}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["observeSelectedGraphInstance"]
        4 GETUPVAL                         R1 1
        5 SETTABLEKS                       R1 R0 K1 ["setSelectedGraphInstance"]
        7 GETUPVAL                         R1 2
        8 SETTABLEKS                       R1 R0 K2 ["observeSelectedGraphInstanceId"]
       10 GETUPVAL                         R1 3
       11 SETTABLEKS                       R1 R0 K3 ["setSelectedGraphInstanceIdAsync"]
       13 RETURN                           R0 1

PROTO_6:
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
       14 GETUPVAL                         R3 3
       15 CALL                             R3 0 1
       16 GETUPVAL                         R4 0
       17 GETTABLEKS                       R4 R4 K2 ["useMemo"]
       19 NEWCLOSURE                       R5 P0
       20 CAPTURE                          UPVAL U4
       21 CAPTURE                          VAL R3
       22 NEWTABLE                         R6 0 1
       24 MOVE                             R7 R3
       25 SETLIST                          R6 R7 1 [1]
       27 CALL                             R4 2 1
       28 GETUPVAL                         R5 0
       29 GETTABLEKS                       R5 R5 K2 ["useMemo"]
       31 NEWCLOSURE                       R6 P1
       32 CAPTURE                          UPVAL U5
       33 CAPTURE                          VAL R4
       34 CAPTURE                          VAL R1
       35 NEWTABLE                         R7 0 2
       37 MOVE                             R8 R4
       38 GETTABLEKS                       R9 R1 K3 ["instanceRegistry"]
       40 SETLIST                          R7 R8 2 [1]
       42 CALL                             R5 2 1
       43 GETUPVAL                         R6 0
       44 GETTABLEKS                       R6 R6 K4 ["useCallback"]
       46 NEWCLOSURE                       R7 P2
       47 CAPTURE                          VAL R2
       48 NEWTABLE                         R8 0 1
       50 GETTABLEKS                       R9 R2 K5 ["selectionService"]
       52 SETLIST                          R8 R9 1 [1]
       54 CALL                             R6 2 1
       55 GETUPVAL                         R7 0
       56 GETTABLEKS                       R7 R7 K4 ["useCallback"]
       58 NEWCLOSURE                       R8 P3
       59 CAPTURE                          VAL R1
       60 CAPTURE                          VAL R6
       61 NEWTABLE                         R9 0 2
       63 MOVE                             R10 R6
       64 GETTABLEKS                       R11 R2 K5 ["selectionService"]
       66 SETLIST                          R9 R10 2 [1]
       68 CALL                             R7 2 1
       69 GETUPVAL                         R8 6
       70 GETTABLEKS                       R8 R8 K6 ["useSignalProducer"]
       72 MOVE                             R9 R5
       73 CALL                             R8 1 0
       74 GETUPVAL                         R8 7
       75 GETTABLEKS                       R8 R8 K7 ["useProducer"]
       77 MOVE                             R9 R7
       78 CALL                             R8 1 0
       79 GETUPVAL                         R8 0
       80 GETTABLEKS                       R8 R8 K2 ["useMemo"]
       82 NEWCLOSURE                       R9 P4
       83 CAPTURE                          VAL R4
       84 CAPTURE                          VAL R6
       85 CAPTURE                          VAL R5
       86 CAPTURE                          VAL R7
       87 NEWTABLE                         R10 0 4
       89 MOVE                             R11 R4
       90 MOVE                             R12 R6
       91 MOVE                             R13 R5
       92 MOVE                             R14 R7
       93 SETLIST                          R10 R11 4 [1]
       95 CALL                             R8 2 1
       96 GETUPVAL                         R9 0
       97 GETTABLEKS                       R9 R9 K8 ["createElement"]
       99 GETUPVAL                         R10 8
      100 GETTABLEKS                       R10 R10 K9 ["Provider"]
      102 DUPTABLE                         R11 K11 [{"value"}]
      103 SETTABLEKS                       R8 R11 K10 ["value"]
      105 GETTABLEKS                       R12 R0 K12 ["children"]
      107 CALL                             R9 3 -1
      108 RETURN                           R9 -1

PROTO_7:
        0 JUMPIFNOT                        R0 ; [+11]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K0 ["instanceRegistry"]
        4 MOVE                             R3 R0
        5 NAMECALL                         R1 R1 K1 ["instanceToId"]
        7 CALL                             R1 2 1
        8 GETUPVAL                         R2 1
        9 MOVE                             R3 R1
       10 CALL                             R2 1 0
       11 RETURN                           R0 0
       12 GETUPVAL                         R1 1
       13 LOADNIL                          R2
       14 CALL                             R1 1 0
       15 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 JUMPIFNOT                        R1 ; [+14]
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K0 ["instanceRegistry"]
        7 MOVE                             R4 R1
        8 NAMECALL                         R2 R2 K1 ["idToInstance"]
       10 CALL                             R2 2 1
       11 JUMPIFNOT                        R2 ; [+6]
       12 LOADK                            R5 K2 ["AnimationGraphDefinition"]
       13 NAMECALL                         R3 R2 K3 ["IsA"]
       15 CALL                             R3 2 1
       16 JUMPIFNOT                        R3 ; [+1]
       17 RETURN                           R2 1
       18 LOADNIL                          R2
       19 RETURN                           R2 1

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createComputed"]
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CALL                             R0 1 -1
        7 RETURN                           R0 -1

PROTO_10:
        0 DUPTABLE                         R0 K4 [{"observeSelectedGraphInstance", "setSelectedGraphInstance", "observeSelectedGraphInstanceId", "setSelectedGraphInstanceIdAsync"}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["observeSelectedGraphInstance"]
        4 GETUPVAL                         R1 1
        5 SETTABLEKS                       R1 R0 K1 ["setSelectedGraphInstance"]
        7 GETUPVAL                         R1 2
        8 SETTABLEKS                       R1 R0 K2 ["observeSelectedGraphInstanceId"]
       10 GETUPVAL                         R1 3
       11 SETTABLEKS                       R1 R0 K3 ["setSelectedGraphInstanceIdAsync"]
       13 RETURN                           R0 1

PROTO_11:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 2
        8 GETTABLEKS                       R2 R2 K2 ["useSignalConsumer"]
       10 LOADNIL                          R3
       11 CALL                             R2 1 1
       12 GETUPVAL                         R3 3
       13 GETTABLEKS                       R3 R3 K3 ["useConsumer"]
       15 CALL                             R3 0 1
       16 GETUPVAL                         R4 0
       17 GETTABLEKS                       R4 R4 K4 ["useCallback"]
       19 NEWCLOSURE                       R5 P0
       20 CAPTURE                          VAL R1
       21 CAPTURE                          VAL R3
       22 NEWTABLE                         R6 0 2
       24 MOVE                             R7 R3
       25 GETTABLEKS                       R8 R1 K5 ["instanceRegistry"]
       27 SETLIST                          R6 R7 2 [1]
       29 CALL                             R4 2 1
       30 GETUPVAL                         R5 0
       31 GETTABLEKS                       R5 R5 K6 ["useMemo"]
       33 NEWCLOSURE                       R6 P1
       34 CAPTURE                          UPVAL U4
       35 CAPTURE                          VAL R2
       36 CAPTURE                          VAL R1
       37 NEWTABLE                         R7 0 2
       39 MOVE                             R8 R2
       40 GETTABLEKS                       R9 R1 K5 ["instanceRegistry"]
       42 SETLIST                          R7 R8 2 [1]
       44 CALL                             R5 2 1
       45 GETUPVAL                         R6 0
       46 GETTABLEKS                       R6 R6 K6 ["useMemo"]
       48 NEWCLOSURE                       R7 P2
       49 CAPTURE                          VAL R5
       50 CAPTURE                          VAL R4
       51 CAPTURE                          VAL R2
       52 CAPTURE                          VAL R3
       53 NEWTABLE                         R8 0 4
       55 MOVE                             R9 R5
       56 MOVE                             R10 R4
       57 MOVE                             R11 R2
       58 MOVE                             R12 R3
       59 SETLIST                          R8 R9 4 [1]
       61 CALL                             R6 2 1
       62 GETUPVAL                         R7 0
       63 GETTABLEKS                       R7 R7 K7 ["createElement"]
       65 GETUPVAL                         R8 5
       66 GETTABLEKS                       R8 R8 K8 ["Provider"]
       68 DUPTABLE                         R9 K10 [{"value"}]
       69 SETTABLEKS                       R6 R9 K9 ["value"]
       71 GETTABLEKS                       R10 R0 K11 ["children"]
       73 CALL                             R7 3 -1
       74 RETURN                           R7 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Contexts"]
       11 GETTABLEKS                       R2 R2 K7 ["InstanceRegistryContext"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Contexts"]
       18 GETTABLEKS                       R3 R3 K8 ["NativeGraphContext"]
       20 GETTABLEKS                       R3 R3 K9 ["NativeGraphUtils"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K10 ["Util"]
       27 GETTABLEKS                       R4 R4 K11 ["Networking"]
       29 GETTABLEKS                       R4 R4 K12 ["NetworkUtils"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R5 R0 K13 ["Parent"]
       36 GETTABLEKS                       R5 R5 K14 ["React"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K5 [require]
       41 GETTABLEKS                       R6 R0 K13 ["Parent"]
       43 GETTABLEKS                       R6 R6 K15 ["ReactUtils"]
       45 CALL                             R5 1 1
       46 GETIMPORT                        R6 K5 [require]
       48 GETTABLEKS                       R7 R0 K6 ["Contexts"]
       50 GETTABLEKS                       R7 R7 K16 ["SelectionServiceContext"]
       52 CALL                             R6 1 1
       53 GETIMPORT                        R7 K5 [require]
       55 GETTABLEKS                       R8 R0 K10 ["Util"]
       57 GETTABLEKS                       R8 R8 K17 ["Signals"]
       59 GETTABLEKS                       R8 R8 K18 ["Experimental"]
       61 GETTABLEKS                       R8 R8 K19 ["SignalExperimentalUtils"]
       63 CALL                             R7 1 1
       64 GETIMPORT                        R8 K5 [require]
       66 GETTABLEKS                       R9 R0 K13 ["Parent"]
       68 GETTABLEKS                       R9 R9 K17 ["Signals"]
       70 CALL                             R8 1 1
       71 GETIMPORT                        R9 K5 [require]
       73 GETTABLEKS                       R10 R0 K10 ["Util"]
       75 GETTABLEKS                       R10 R10 K17 ["Signals"]
       77 GETTABLEKS                       R10 R10 K20 ["SignalsInstanceUtils"]
       79 CALL                             R9 1 1
       80 GETIMPORT                        R10 K5 [require]
       82 GETTABLEKS                       R11 R0 K21 ["Hooks"]
       84 GETTABLEKS                       R11 R11 K22 ["useObserveSelection"]
       86 CALL                             R10 1 1
       87 DUPTABLE                         R11 K27 [{"observeSelectedGraphInstance", "observeSelectedGraphInstanceId", "setSelectedGraphInstance", "setSelectedGraphInstanceIdAsync"}]
       88 GETTABLEKS                       R12 R9 K28 ["of"]
       90 LOADNIL                          R13
       91 CALL                             R12 1 1
       92 SETTABLEKS                       R12 R11 K23 ["observeSelectedGraphInstance"]
       94 GETTABLEKS                       R12 R9 K28 ["of"]
       96 LOADNIL                          R13
       97 CALL                             R12 1 1
       98 SETTABLEKS                       R12 R11 K24 ["observeSelectedGraphInstanceId"]
      100 GETTABLEKS                       R12 R5 K29 ["createUnimplemented"]
      102 LOADK                            R13 K25 ["setSelectedGraphInstance"]
      103 CALL                             R12 1 1
      104 SETTABLEKS                       R12 R11 K25 ["setSelectedGraphInstance"]
      106 GETTABLEKS                       R12 R5 K29 ["createUnimplemented"]
      108 LOADK                            R13 K26 ["setSelectedGraphInstanceIdAsync"]
      109 CALL                             R12 1 1
      110 SETTABLEKS                       R12 R11 K26 ["setSelectedGraphInstanceIdAsync"]
      112 GETTABLEKS                       R12 R4 K30 ["createContext"]
      114 MOVE                             R13 R11
      115 CALL                             R12 1 1
      116 GETTABLEKS                       R13 R3 K31 ["createBoundAction"]
      118 LOADK                            R14 K32 ["SelectedGraphContext_setSelectedGraphInstanceIdAsync"]
      119 CALL                             R13 1 1
      120 GETTABLEKS                       R14 R3 K33 ["createReplicatedState"]
      122 LOADK                            R15 K34 ["SelectedGraphContext_selectedGraphInstanceId"]
      123 CALL                             R14 1 1
      124 DUPCLOSURE                       R15 K35 [PROTO_6]
      125 CAPTURE                          VAL R4
      126 CAPTURE                          VAL R1
      127 CAPTURE                          VAL R6
      128 CAPTURE                          VAL R10
      129 CAPTURE                          VAL R2
      130 CAPTURE                          VAL R7
      131 CAPTURE                          VAL R14
      132 CAPTURE                          VAL R13
      133 CAPTURE                          VAL R12
      134 DUPCLOSURE                       R16 K36 [PROTO_11]
      135 CAPTURE                          VAL R4
      136 CAPTURE                          VAL R1
      137 CAPTURE                          VAL R14
      138 CAPTURE                          VAL R13
      139 CAPTURE                          VAL R7
      140 CAPTURE                          VAL R12
      141 DUPTABLE                         R17 K40 [{"Context", "EditableDataModelProvider", "UIDataModelProvider"}]
      142 SETTABLEKS                       R12 R17 K37 ["Context"]
      144 SETTABLEKS                       R15 R17 K38 ["EditableDataModelProvider"]
      146 SETTABLEKS                       R16 R17 K39 ["UIDataModelProvider"]
      148 RETURN                           R17 1
