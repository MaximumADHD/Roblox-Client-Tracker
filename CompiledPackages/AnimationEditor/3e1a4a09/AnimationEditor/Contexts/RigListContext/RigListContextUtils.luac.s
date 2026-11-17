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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["_observeAllRigsInAnimSaves"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K1 ["createComputed"]
        7 NEWCLOSURE                       R3 P0
        8 CAPTURE                          VAL R1
        9 CAPTURE                          VAL R0
       10 CALL                             R2 1 1
       11 GETUPVAL                         R3 2
       12 GETTABLEKS                       R3 R3 K2 ["observeFlattenListToUniqueItems"]
       14 MOVE                             R4 R2
       15 CALL                             R3 1 1
       16 GETUPVAL                         R4 0
       17 GETTABLEKS                       R4 R4 K3 ["_observeValidRigReferences"]
       19 MOVE                             R5 R3
       20 CALL                             R4 1 -1
       21 RETURN                           R4 -1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["observeChildrenWhichIsA"]
        3 MOVE                             R2 R0
        4 LOADK                            R3 K1 ["ObjectValue"]
        5 CALL                             R1 2 -1
        6 RETURN                           R1 -1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["properties"]
        3 GETTABLEKS                       R1 R1 K1 ["observeInstance"]
        5 MOVE                             R2 R0
        6 LOADK                            R3 K2 ["Value"]
        7 CALL                             R1 2 1
        8 RETURN                           R1 1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["_observeAnimSavesList"]
        3 CALL                             R0 0 1
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K1 ["forEach"]
        7 MOVE                             R2 R0
        8 DUPCLOSURE                       R3 K2 [PROTO_2]
        9 CAPTURE                          UPVAL U1
       10 CALL                             R1 2 1
       11 GETUPVAL                         R2 1
       12 GETTABLEKS                       R2 R2 K3 ["observeFlattenListToUniqueItems"]
       14 MOVE                             R3 R1
       15 CALL                             R2 1 1
       16 GETUPVAL                         R3 1
       17 GETTABLEKS                       R3 R3 K1 ["forEach"]
       19 MOVE                             R4 R2
       20 DUPCLOSURE                       R5 K4 [PROTO_3]
       21 CAPTURE                          UPVAL U2
       22 CALL                             R3 2 1
       23 RETURN                           R3 1

PROTO_5:
        0 LOADK                            R3 K0 ["Humanoid"]
        1 NAMECALL                         R1 R0 K1 ["IsA"]
        3 CALL                             R1 2 1
        4 JUMPIF                           R1 ; [+4]
        5 LOADK                            R3 K2 ["Animator"]
        6 NAMECALL                         R1 R0 K1 ["IsA"]
        8 CALL                             R1 2 1
        9 RETURN                           R1 1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 JUMPIFNOTEQKNIL                  R1 ; [+3]
        5 LOADB                            R1 0
        6 RETURN                           R1 1
        7 GETUPVAL                         R1 1
        8 MOVE                             R2 R0
        9 CALL                             R1 1 1
       10 GETIMPORT                        R3 K1 [next]
       12 MOVE                             R4 R1
       13 CALL                             R3 1 1
       14 JUMPIFNOTEQKNIL                  R3 ; [+2]
       16 LOADB                            R2 0 +1
       17 LOADB                            R2 1
       18 RETURN                           R2 1

PROTO_7:
        0 JUMPIFNOTEQKNIL                  R0 ; [+7]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K0 ["of"]
        5 LOADB                            R2 0
        6 CALL                             R1 1 -1
        7 RETURN                           R1 -1
        8 GETUPVAL                         R1 0
        9 GETTABLEKS                       R1 R1 K1 ["observeFirstAncestor"]
       11 MOVE                             R2 R0
       12 LOADK                            R3 K2 ["Workspace"]
       13 CALL                             R1 2 1
       14 GETUPVAL                         R2 0
       15 GETTABLEKS                       R2 R2 K3 ["observeChildrenWithPredicate"]
       17 MOVE                             R3 R0
       18 DUPCLOSURE                       R4 K4 [PROTO_5]
       19 CALL                             R2 2 1
       20 GETUPVAL                         R3 1
       21 GETTABLEKS                       R3 R3 K5 ["createComputed"]
       23 NEWCLOSURE                       R4 P1
       24 CAPTURE                          VAL R1
       25 CAPTURE                          VAL R2
       26 CALL                             R3 1 -1
       27 RETURN                           R3 -1

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["filter"]
        3 MOVE                             R2 R0
        4 DUPCLOSURE                       R3 K1 [PROTO_7]
        5 CAPTURE                          UPVAL U0
        6 CAPTURE                          UPVAL U1
        7 CALL                             R1 2 1
        8 RETURN                           R1 1

PROTO_9:
        0 GETTABLEKS                       R2 R0 K0 ["Name"]
        2 JUMPIFEQKS                       R2 K1 ["RBX_ANIMSAVES"] ; [+2]
        4 LOADB                            R1 0 +1
        5 LOADB                            R1 1
        6 RETURN                           R1 1

PROTO_10:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["observeChildrenWithPredicate"]
        3 GETUPVAL                         R1 1
        4 DUPCLOSURE                       R2 K1 [PROTO_9]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [game]
        9 LOADK                            R3 K6 ["ServerStorage"]
       10 NAMECALL                         R1 R1 K7 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R3 R0 K10 ["Util"]
       17 GETTABLEKS                       R3 R3 K11 ["Signals"]
       19 GETTABLEKS                       R3 R3 K12 ["Experimental"]
       21 GETTABLEKS                       R3 R3 K13 ["SignalExperimentalUtils"]
       23 CALL                             R2 1 1
       24 GETIMPORT                        R3 K9 [require]
       26 GETTABLEKS                       R4 R0 K14 ["Parent"]
       28 GETTABLEKS                       R4 R4 K11 ["Signals"]
       30 CALL                             R3 1 1
       31 GETIMPORT                        R4 K9 [require]
       33 GETTABLEKS                       R5 R0 K10 ["Util"]
       35 GETTABLEKS                       R5 R5 K11 ["Signals"]
       37 GETTABLEKS                       R5 R5 K15 ["SignalsInstanceUtils"]
       39 CALL                             R4 1 1
       40 GETIMPORT                        R5 K9 [require]
       42 GETTABLEKS                       R6 R0 K10 ["Util"]
       44 GETTABLEKS                       R6 R6 K11 ["Signals"]
       46 GETTABLEKS                       R6 R6 K16 ["TypedInstanceSignals"]
       48 CALL                             R5 1 1
       49 NEWTABLE                         R6 4 0
       51 DUPCLOSURE                       R7 K17 [PROTO_1]
       52 CAPTURE                          VAL R6
       53 CAPTURE                          VAL R2
       54 CAPTURE                          VAL R4
       55 SETTABLEKS                       R7 R6 K18 ["observeAllRigs"]
       57 DUPCLOSURE                       R7 K19 [PROTO_4]
       58 CAPTURE                          VAL R6
       59 CAPTURE                          VAL R4
       60 CAPTURE                          VAL R5
       61 SETTABLEKS                       R7 R6 K20 ["_observeAllRigsInAnimSaves"]
       63 DUPCLOSURE                       R7 K21 [PROTO_8]
       64 CAPTURE                          VAL R4
       65 CAPTURE                          VAL R2
       66 SETTABLEKS                       R7 R6 K22 ["_observeValidRigReferences"]
       68 DUPCLOSURE                       R7 K23 [PROTO_10]
       69 CAPTURE                          VAL R4
       70 CAPTURE                          VAL R1
       71 SETTABLEKS                       R7 R6 K24 ["_observeAnimSavesList"]
       73 RETURN                           R6 1
