PROTO_0:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 GETUPVAL                         R2 1
        4 MOVE                             R3 R0
        5 CALL                             R2 1 1
        6 NEWTABLE                         R3 0 2
        8 MOVE                             R4 R2
        9 MOVE                             R5 R1
       10 SETLIST                          R3 R4 2 [1]
       12 RETURN                           R3 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["observeAllGraphsInAnimSaves"]
        3 CALL                             R2 0 1
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R3 R3 K1 ["observeAllSelectedGraphs"]
        7 MOVE                             R4 R0
        8 MOVE                             R5 R1
        9 CALL                             R3 2 1
       10 GETUPVAL                         R4 1
       11 GETTABLEKS                       R4 R4 K2 ["createComputed"]
       13 NEWCLOSURE                       R5 P0
       14 CAPTURE                          VAL R2
       15 CAPTURE                          VAL R3
       16 CALL                             R4 1 1
       17 GETUPVAL                         R5 2
       18 GETTABLEKS                       R5 R5 K3 ["observeFlattenListToUniqueItems"]
       20 MOVE                             R6 R4
       21 CALL                             R5 1 1
       22 GETUPVAL                         R6 0
       23 GETTABLEKS                       R6 R6 K4 ["toObserveGraphItems"]
       25 MOVE                             R7 R0
       26 MOVE                             R8 R5
       27 CALL                             R6 2 -1
       28 RETURN                           R6 -1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 JUMPIFNOT                        R1 ; [+12]
        4 GETUPVAL                         R2 1
        5 MOVE                             R4 R1
        6 NAMECALL                         R2 R2 K0 ["idToInstance"]
        8 CALL                             R2 2 1
        9 JUMPIFNOT                        R2 ; [+6]
       10 NEWTABLE                         R3 0 1
       12 MOVE                             R4 R2
       13 SETLIST                          R3 R4 1 [1]
       15 RETURN                           R3 1
       16 NEWTABLE                         R2 0 0
       18 RETURN                           R2 1

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["createComputed"]
        3 NEWCLOSURE                       R3 P0
        4 CAPTURE                          VAL R1
        5 CAPTURE                          VAL R0
        6 CALL                             R2 1 -1
        7 RETURN                           R2 -1

PROTO_4:
        0 DUPTABLE                         R1 K4 [{"id", "text", "isDirty", "timestamp"}]
        1 GETUPVAL                         R2 0
        2 SETTABLEKS                       R2 R1 K0 ["id"]
        4 GETUPVAL                         R2 1
        5 MOVE                             R3 R0
        6 CALL                             R2 1 1
        7 SETTABLEKS                       R2 R1 K1 ["text"]
        9 GETUPVAL                         R3 2
       10 MOVE                             R4 R0
       11 CALL                             R3 1 1
       12 JUMPIFEQKB                       R3 TRUE ; [+2]
       14 LOADB                            R2 0 +1
       15 LOADB                            R2 1
       16 SETTABLEKS                       R2 R1 K2 ["isDirty"]
       18 GETUPVAL                         R3 3
       19 CALL                             R3 0 1
       20 JUMPIFNOT                        R3 ; [+7]
       21 GETUPVAL                         R3 4
       22 JUMPIFNOT                        R3 ; [+5]
       23 GETUPVAL                         R3 4
       24 MOVE                             R4 R0
       25 CALL                             R3 1 1
       26 ORK                              R2 R3 K5 [0]
       27 JUMP                             ; [+1]
       28 LOADN                            R2 0
       29 SETTABLEKS                       R2 R1 K3 ["timestamp"]
       31 RETURN                           R1 1

PROTO_5:
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
       32 MOVE                             R6 R0
       33 NAMECALL                         R4 R4 K8 ["instanceToId"]
       35 CALL                             R4 2 1
       36 GETUPVAL                         R5 4
       37 GETTABLEKS                       R5 R5 K9 ["createComputed"]
       39 NEWCLOSURE                       R6 P0
       40 CAPTURE                          VAL R4
       41 CAPTURE                          VAL R1
       42 CAPTURE                          VAL R2
       43 CAPTURE                          UPVAL U1
       44 CAPTURE                          VAL R3
       45 CALL                             R5 1 -1
       46 RETURN                           R5 -1

PROTO_6:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["forEach"]
        3 MOVE                             R3 R1
        4 NEWCLOSURE                       R4 P0
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          UPVAL U2
        7 CAPTURE                          UPVAL U3
        8 CAPTURE                          VAL R0
        9 CAPTURE                          UPVAL U4
       10 CALL                             R2 2 -1
       11 RETURN                           R2 -1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["observeChildrenWhichIsA"]
        3 MOVE                             R2 R0
        4 LOADK                            R3 K1 ["ObjectValue"]
        5 CALL                             R1 2 -1
        6 RETURN                           R1 -1

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["observeChildrenWhichIsA"]
        3 MOVE                             R2 R0
        4 LOADK                            R3 K1 ["AnimationGraphDefinition"]
        5 CALL                             R1 2 -1
        6 RETURN                           R1 -1

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["_observeAnimSavesList"]
        3 CALL                             R0 0 1
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K1 ["forEach"]
        7 MOVE                             R2 R0
        8 DUPCLOSURE                       R3 K2 [PROTO_7]
        9 CAPTURE                          UPVAL U1
       10 CALL                             R1 2 1
       11 GETUPVAL                         R2 1
       12 GETTABLEKS                       R2 R2 K3 ["observeFlattenListToUniqueItems"]
       14 MOVE                             R3 R1
       15 CALL                             R2 1 1
       16 GETUPVAL                         R3 1
       17 GETTABLEKS                       R3 R3 K1 ["forEach"]
       19 MOVE                             R4 R2
       20 DUPCLOSURE                       R5 K4 [PROTO_8]
       21 CAPTURE                          UPVAL U1
       22 CALL                             R3 2 1
       23 GETUPVAL                         R4 1
       24 GETTABLEKS                       R4 R4 K3 ["observeFlattenListToUniqueItems"]
       26 MOVE                             R5 R3
       27 CALL                             R4 1 -1
       28 RETURN                           R4 -1

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
       16 GETTABLEKS                       R3 R0 K8 ["Util"]
       18 GETTABLEKS                       R3 R3 K9 ["Instances"]
       20 GETTABLEKS                       R3 R3 K10 ["InstanceRegistry"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K6 ["Contexts"]
       27 GETTABLEKS                       R4 R4 K11 ["RigListContext"]
       29 GETTABLEKS                       R4 R4 K12 ["RigListContextUtils"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R5 R0 K8 ["Util"]
       36 GETTABLEKS                       R5 R5 K13 ["Signals"]
       38 GETTABLEKS                       R5 R5 K14 ["Experimental"]
       40 GETTABLEKS                       R5 R5 K15 ["SignalExperimentalUtils"]
       42 CALL                             R4 1 1
       43 GETIMPORT                        R5 K5 [require]
       45 GETTABLEKS                       R6 R0 K16 ["Parent"]
       47 GETTABLEKS                       R6 R6 K13 ["Signals"]
       49 CALL                             R5 1 1
       50 GETIMPORT                        R6 K5 [require]
       52 GETTABLEKS                       R7 R0 K8 ["Util"]
       54 GETTABLEKS                       R7 R7 K13 ["Signals"]
       56 GETTABLEKS                       R7 R7 K17 ["SignalsInstanceUtils"]
       58 CALL                             R6 1 1
       59 GETIMPORT                        R7 K5 [require]
       61 GETTABLEKS                       R8 R0 K8 ["Util"]
       63 GETTABLEKS                       R8 R8 K13 ["Signals"]
       65 GETTABLEKS                       R8 R8 K18 ["TypedInstanceSignals"]
       67 CALL                             R7 1 1
       68 GETIMPORT                        R8 K5 [require]
       70 GETTABLEKS                       R9 R0 K19 ["Flags"]
       72 GETTABLEKS                       R9 R9 K20 ["getFFlagAnimGraphUISortGraphElements"]
       74 CALL                             R8 1 1
       75 NEWTABLE                         R9 4 0
       77 DUPCLOSURE                       R10 K21 [PROTO_1]
       78 CAPTURE                          VAL R9
       79 CAPTURE                          VAL R4
       80 CAPTURE                          VAL R6
       81 SETTABLEKS                       R10 R9 K22 ["observeAllGraphItems"]
       83 DUPCLOSURE                       R10 K23 [PROTO_3]
       84 CAPTURE                          VAL R4
       85 SETTABLEKS                       R10 R9 K24 ["observeAllSelectedGraphs"]
       87 DUPCLOSURE                       R10 K25 [PROTO_6]
       88 CAPTURE                          VAL R6
       89 CAPTURE                          VAL R7
       90 CAPTURE                          VAL R8
       91 CAPTURE                          VAL R1
       92 CAPTURE                          VAL R4
       93 SETTABLEKS                       R10 R9 K26 ["toObserveGraphItems"]
       95 DUPCLOSURE                       R10 K27 [PROTO_9]
       96 CAPTURE                          VAL R3
       97 CAPTURE                          VAL R6
       98 SETTABLEKS                       R10 R9 K28 ["observeAllGraphsInAnimSaves"]
      100 RETURN                           R9 1
