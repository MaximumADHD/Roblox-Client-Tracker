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
        8 GETUPVAL                         R3 1
        9 CALL                             R3 0 1
       10 JUMPIFNOT                        R3 ; [+6]
       11 GETUPVAL                         R2 2
       12 GETTABLEKS                       R2 R2 K3 ["observeIsDirty"]
       14 MOVE                             R3 R0
       15 CALL                             R2 1 1
       16 JUMP                             ; [+8]
       17 GETUPVAL                         R2 0
       18 GETTABLEKS                       R2 R2 K4 ["attributes"]
       20 GETTABLEKS                       R2 R2 K5 ["observeBoolean"]
       22 MOVE                             R3 R0
       23 LOADK                            R4 K6 ["RBX_GraphDirty"]
       24 CALL                             R2 2 1
       25 GETUPVAL                         R3 0
       26 GETTABLEKS                       R3 R3 K4 ["attributes"]
       28 GETTABLEKS                       R3 R3 K7 ["observeNumber"]
       30 MOVE                             R4 R0
       31 GETUPVAL                         R5 3
       32 GETTABLEKS                       R5 R5 K8 ["TIMESTAMP_ATTRIBUTE_NAME"]
       34 CALL                             R3 2 1
       35 GETUPVAL                         R4 4
       36 MOVE                             R6 R0
       37 NAMECALL                         R4 R4 K9 ["instanceToId"]
       39 CALL                             R4 2 1
       40 GETUPVAL                         R5 5
       41 GETTABLEKS                       R5 R5 K10 ["createComputed"]
       43 NEWCLOSURE                       R6 P0
       44 CAPTURE                          VAL R4
       45 CAPTURE                          VAL R1
       46 CAPTURE                          VAL R2
       47 CAPTURE                          VAL R3
       48 CALL                             R5 1 -1
       49 RETURN                           R5 -1

PROTO_6:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["forEach"]
        3 MOVE                             R3 R1
        4 NEWCLOSURE                       R4 P0
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          UPVAL U2
        7 CAPTURE                          UPVAL U3
        8 CAPTURE                          UPVAL U4
        9 CAPTURE                          VAL R0
       10 CAPTURE                          UPVAL U5
       11 CALL                             R2 2 -1
       12 RETURN                           R2 -1

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
       11 GETTABLEKS                       R2 R2 K7 ["GraphDirtyStateContext"]
       13 GETTABLEKS                       R2 R2 K8 ["GraphDirtyUtils"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K6 ["Contexts"]
       20 GETTABLEKS                       R3 R3 K9 ["GraphTimestampContext"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K10 ["Util"]
       27 GETTABLEKS                       R4 R4 K11 ["Instances"]
       29 GETTABLEKS                       R4 R4 K12 ["InstanceRegistry"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R5 R0 K6 ["Contexts"]
       36 GETTABLEKS                       R5 R5 K13 ["OpenableAssetTypeContext"]
       38 GETTABLEKS                       R5 R5 K14 ["OpenableAssetTypeUtils"]
       40 CALL                             R4 1 1
       41 GETIMPORT                        R5 K5 [require]
       43 GETTABLEKS                       R6 R0 K6 ["Contexts"]
       45 GETTABLEKS                       R6 R6 K15 ["RigListContext"]
       47 GETTABLEKS                       R6 R6 K16 ["RigListContextUtils"]
       49 CALL                             R5 1 1
       50 GETIMPORT                        R6 K5 [require]
       52 GETTABLEKS                       R7 R0 K10 ["Util"]
       54 GETTABLEKS                       R7 R7 K17 ["Signals"]
       56 GETTABLEKS                       R7 R7 K18 ["Experimental"]
       58 GETTABLEKS                       R7 R7 K19 ["SignalExperimentalUtils"]
       60 CALL                             R6 1 1
       61 GETIMPORT                        R7 K5 [require]
       63 GETTABLEKS                       R8 R0 K20 ["Parent"]
       65 GETTABLEKS                       R8 R8 K17 ["Signals"]
       67 CALL                             R7 1 1
       68 GETIMPORT                        R8 K5 [require]
       70 GETTABLEKS                       R9 R0 K10 ["Util"]
       72 GETTABLEKS                       R9 R9 K17 ["Signals"]
       74 GETTABLEKS                       R9 R9 K21 ["SignalsInstanceUtils"]
       76 CALL                             R8 1 1
       77 GETIMPORT                        R9 K5 [require]
       79 GETTABLEKS                       R10 R0 K10 ["Util"]
       81 GETTABLEKS                       R10 R10 K17 ["Signals"]
       83 GETTABLEKS                       R10 R10 K22 ["TypedInstanceSignals"]
       85 CALL                             R9 1 1
       86 GETIMPORT                        R10 K5 [require]
       88 GETTABLEKS                       R11 R0 K23 ["Types"]
       90 CALL                             R10 1 1
       91 GETIMPORT                        R11 K5 [require]
       93 GETTABLEKS                       R12 R0 K24 ["Flags"]
       95 GETTABLEKS                       R12 R12 K25 ["getFFlagAnimGraphUI_FixUndoHistory"]
       97 CALL                             R11 1 1
       98 GETIMPORT                        R12 K5 [require]
      100 GETTABLEKS                       R13 R0 K24 ["Flags"]
      102 GETTABLEKS                       R13 R13 K26 ["getFFlagAnimationEditorAnimationTypes"]
      104 CALL                             R12 1 1
      105 NEWTABLE                         R13 4 0
      107 DUPCLOSURE                       R14 K27 [PROTO_1]
      108 CAPTURE                          VAL R13
      109 CAPTURE                          VAL R6
      110 CAPTURE                          VAL R8
      111 SETTABLEKS                       R14 R13 K28 ["observeAllGraphItems"]
      113 DUPCLOSURE                       R14 K29 [PROTO_3]
      114 CAPTURE                          VAL R6
      115 SETTABLEKS                       R14 R13 K30 ["observeAllSelectedGraphs"]
      117 DUPCLOSURE                       R14 K31 [PROTO_6]
      118 CAPTURE                          VAL R8
      119 CAPTURE                          VAL R9
      120 CAPTURE                          VAL R11
      121 CAPTURE                          VAL R1
      122 CAPTURE                          VAL R2
      123 CAPTURE                          VAL R6
      124 SETTABLEKS                       R14 R13 K32 ["toObserveGraphItems"]
      126 DUPCLOSURE                       R14 K33 [PROTO_9]
      127 CAPTURE                          VAL R12
      128 CAPTURE                          VAL R4
      129 CAPTURE                          VAL R5
      130 CAPTURE                          VAL R8
      131 SETTABLEKS                       R14 R13 K34 ["observeAllGraphsInAnimSaves"]
      133 RETURN                           R13 1
