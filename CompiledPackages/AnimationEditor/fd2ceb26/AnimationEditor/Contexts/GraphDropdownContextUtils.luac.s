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
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["observeAllGraphsInAnimSaves"]
        3 MOVE                             R4 R2
        4 CALL                             R3 1 1
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R4 R4 K1 ["observeAllSelectedGraphs"]
        8 MOVE                             R5 R0
        9 MOVE                             R6 R1
       10 CALL                             R4 2 1
       11 GETUPVAL                         R5 1
       12 GETTABLEKS                       R5 R5 K2 ["createComputed"]
       14 NEWCLOSURE                       R6 P0
       15 CAPTURE                          VAL R3
       16 CAPTURE                          VAL R4
       17 CALL                             R5 1 1
       18 GETUPVAL                         R6 2
       19 GETTABLEKS                       R6 R6 K3 ["observeFlattenListToUniqueItems"]
       21 MOVE                             R7 R5
       22 CALL                             R6 1 1
       23 GETUPVAL                         R7 0
       24 GETTABLEKS                       R7 R7 K4 ["toObserveGraphItems"]
       26 MOVE                             R8 R0
       27 MOVE                             R9 R6
       28 CALL                             R7 2 -1
       29 RETURN                           R7 -1

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
        4 GETUPVAL                         R3 1
        5 CALL                             R1 2 -1
        6 RETURN                           R1 -1

PROTO_9:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 JUMPIFNOT                        R2 ; [+6]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K0 ["getClassName"]
        6 MOVE                             R2 R0
        7 CALL                             R1 1 1
        8 JUMP                             ; [+1]
        9 LOADK                            R1 K1 ["AnimationGraphDefinition"]
       10 GETUPVAL                         R2 2
       11 GETTABLEKS                       R2 R2 K2 ["_observeAnimSavesList"]
       13 CALL                             R2 0 1
       14 GETUPVAL                         R3 3
       15 GETTABLEKS                       R3 R3 K3 ["forEach"]
       17 MOVE                             R4 R2
       18 DUPCLOSURE                       R5 K4 [PROTO_7]
       19 CAPTURE                          UPVAL U3
       20 CALL                             R3 2 1
       21 GETUPVAL                         R4 3
       22 GETTABLEKS                       R4 R4 K5 ["observeFlattenListToUniqueItems"]
       24 MOVE                             R5 R3
       25 CALL                             R4 1 1
       26 GETUPVAL                         R5 3
       27 GETTABLEKS                       R5 R5 K3 ["forEach"]
       29 MOVE                             R6 R4
       30 NEWCLOSURE                       R7 P1
       31 CAPTURE                          UPVAL U3
       32 CAPTURE                          VAL R1
       33 CALL                             R5 2 1
       34 GETUPVAL                         R6 3
       35 GETTABLEKS                       R6 R6 K5 ["observeFlattenListToUniqueItems"]
       37 MOVE                             R7 R5
       38 CALL                             R6 1 -1
       39 RETURN                           R6 -1

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
       27 GETTABLEKS                       R4 R4 K11 ["OpenableAssetTypeContext"]
       29 GETTABLEKS                       R4 R4 K12 ["OpenableAssetTypeUtils"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R5 R0 K6 ["Contexts"]
       36 GETTABLEKS                       R5 R5 K13 ["RigListContext"]
       38 GETTABLEKS                       R5 R5 K14 ["RigListContextUtils"]
       40 CALL                             R4 1 1
       41 GETIMPORT                        R5 K5 [require]
       43 GETTABLEKS                       R6 R0 K8 ["Util"]
       45 GETTABLEKS                       R6 R6 K15 ["Signals"]
       47 GETTABLEKS                       R6 R6 K16 ["Experimental"]
       49 GETTABLEKS                       R6 R6 K17 ["SignalExperimentalUtils"]
       51 CALL                             R5 1 1
       52 GETIMPORT                        R6 K5 [require]
       54 GETTABLEKS                       R7 R0 K18 ["Parent"]
       56 GETTABLEKS                       R7 R7 K15 ["Signals"]
       58 CALL                             R6 1 1
       59 GETIMPORT                        R7 K5 [require]
       61 GETTABLEKS                       R8 R0 K8 ["Util"]
       63 GETTABLEKS                       R8 R8 K15 ["Signals"]
       65 GETTABLEKS                       R8 R8 K19 ["SignalsInstanceUtils"]
       67 CALL                             R7 1 1
       68 GETIMPORT                        R8 K5 [require]
       70 GETTABLEKS                       R9 R0 K8 ["Util"]
       72 GETTABLEKS                       R9 R9 K15 ["Signals"]
       74 GETTABLEKS                       R9 R9 K20 ["TypedInstanceSignals"]
       76 CALL                             R8 1 1
       77 GETIMPORT                        R9 K5 [require]
       79 GETTABLEKS                       R10 R0 K21 ["Types"]
       81 CALL                             R9 1 1
       82 GETIMPORT                        R10 K5 [require]
       84 GETTABLEKS                       R11 R0 K22 ["Flags"]
       86 GETTABLEKS                       R11 R11 K23 ["getFFlagAnimationEditorAnimationTypes"]
       88 CALL                             R10 1 1
       89 NEWTABLE                         R11 4 0
       91 DUPCLOSURE                       R12 K24 [PROTO_1]
       92 CAPTURE                          VAL R11
       93 CAPTURE                          VAL R5
       94 CAPTURE                          VAL R7
       95 SETTABLEKS                       R12 R11 K25 ["observeAllGraphItems"]
       97 DUPCLOSURE                       R12 K26 [PROTO_3]
       98 CAPTURE                          VAL R5
       99 SETTABLEKS                       R12 R11 K27 ["observeAllSelectedGraphs"]
      101 DUPCLOSURE                       R12 K28 [PROTO_6]
      102 CAPTURE                          VAL R7
      103 CAPTURE                          VAL R8
      104 CAPTURE                          VAL R1
      105 CAPTURE                          VAL R5
      106 SETTABLEKS                       R12 R11 K29 ["toObserveGraphItems"]
      108 DUPCLOSURE                       R12 K30 [PROTO_9]
      109 CAPTURE                          VAL R10
      110 CAPTURE                          VAL R3
      111 CAPTURE                          VAL R4
      112 CAPTURE                          VAL R7
      113 SETTABLEKS                       R12 R11 K31 ["observeAllGraphsInAnimSaves"]
      115 RETURN                           R11 1
