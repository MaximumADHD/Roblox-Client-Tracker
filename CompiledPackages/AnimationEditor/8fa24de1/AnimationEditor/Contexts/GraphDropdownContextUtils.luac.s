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
       19 MOVE                             R4 R0
       20 CALL                             R3 1 1
       21 ORK                              R2 R3 K5 [0]
       22 SETTABLEKS                       R2 R1 K3 ["timestamp"]
       24 RETURN                           R1 1

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
       16 GETUPVAL                         R3 0
       17 GETTABLEKS                       R3 R3 K3 ["attributes"]
       19 GETTABLEKS                       R3 R3 K6 ["observeNumber"]
       21 MOVE                             R4 R0
       22 GETUPVAL                         R5 1
       23 GETTABLEKS                       R5 R5 K7 ["TIMESTAMP_ATTRIBUTE_NAME"]
       25 CALL                             R3 2 1
       26 GETUPVAL                         R4 2
       27 MOVE                             R6 R0
       28 NAMECALL                         R4 R4 K8 ["instanceToId"]
       30 CALL                             R4 2 1
       31 GETUPVAL                         R5 3
       32 GETTABLEKS                       R5 R5 K9 ["createComputed"]
       34 NEWCLOSURE                       R6 P0
       35 CAPTURE                          VAL R4
       36 CAPTURE                          VAL R1
       37 CAPTURE                          VAL R2
       38 CAPTURE                          VAL R3
       39 CALL                             R5 1 -1
       40 RETURN                           R5 -1

PROTO_6:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["forEach"]
        3 MOVE                             R3 R1
        4 NEWCLOSURE                       R4 P0
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          UPVAL U2
        7 CAPTURE                          VAL R0
        8 CAPTURE                          UPVAL U3
        9 CALL                             R2 2 -1
       10 RETURN                           R2 -1

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
       68 NEWTABLE                         R8 4 0
       70 DUPCLOSURE                       R9 K19 [PROTO_1]
       71 CAPTURE                          VAL R8
       72 CAPTURE                          VAL R4
       73 CAPTURE                          VAL R6
       74 SETTABLEKS                       R9 R8 K20 ["observeAllGraphItems"]
       76 DUPCLOSURE                       R9 K21 [PROTO_3]
       77 CAPTURE                          VAL R4
       78 SETTABLEKS                       R9 R8 K22 ["observeAllSelectedGraphs"]
       80 DUPCLOSURE                       R9 K23 [PROTO_6]
       81 CAPTURE                          VAL R6
       82 CAPTURE                          VAL R7
       83 CAPTURE                          VAL R1
       84 CAPTURE                          VAL R4
       85 SETTABLEKS                       R9 R8 K24 ["toObserveGraphItems"]
       87 DUPCLOSURE                       R9 K25 [PROTO_9]
       88 CAPTURE                          VAL R3
       89 CAPTURE                          VAL R6
       90 SETTABLEKS                       R9 R8 K26 ["observeAllGraphsInAnimSaves"]
       92 RETURN                           R8 1
