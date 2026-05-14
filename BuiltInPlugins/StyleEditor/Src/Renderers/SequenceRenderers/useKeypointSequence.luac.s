PROTO_0:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R2 K2 [{"Keypoints", "Selected"}]
        2 SETTABLEKS                       R0 R2 K0 ["Keypoints"]
        4 LOADN                            R3 1
        5 SETTABLEKS                       R3 R2 K1 ["Selected"]
        7 CALL                             R1 1 0
        8 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["updateSelected"]
        3 MOVE                             R2 R0
        4 GETUPVAL                         R3 1
        5 CALL                             R1 2 -1
        6 RETURN                           R1 -1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          VAL R0
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["add"]
        3 MOVE                             R2 R0
        4 GETUPVAL                         R3 1
        5 CALL                             R1 2 -1
        6 RETURN                           R1 -1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          VAL R0
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["removeSelected"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 -1
        5 RETURN                           R1 -1

PROTO_6:
        0 GETUPVAL                         R0 0
        1 DUPCLOSURE                       R1 K0 [PROTO_5]
        2 CAPTURE                          UPVAL U1
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["select"]
        3 MOVE                             R2 R0
        4 GETUPVAL                         R3 1
        5 CALL                             R1 2 -1
        6 RETURN                           R1 -1

PROTO_8:
        0 GETUPVAL                         R1 0
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          VAL R0
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["Keypoints"]
        3 CALL                             R1 1 0
        4 RETURN                           R0 1

PROTO_10:
        0 GETUPVAL                         R1 0
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CALL                             R1 1 0
        4 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["isFixedKeypointSelected"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 -1
        5 RETURN                           R0 -1

PROTO_12:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["selectedKeypoint"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 -1
        5 RETURN                           R0 -1

PROTO_13:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R2 K2 [{"Keypoints", "Selected"}]
        2 SETTABLEKS                       R0 R2 K0 ["Keypoints"]
        4 LOADN                            R3 1
        5 SETTABLEKS                       R3 R2 K1 ["Selected"]
        7 CALL                             R1 1 2
        8 NEWCLOSURE                       R3 P0
        9 CAPTURE                          VAL R2
       10 NEWCLOSURE                       R4 P1
       11 CAPTURE                          VAL R2
       12 CAPTURE                          UPVAL U1
       13 NEWCLOSURE                       R5 P2
       14 CAPTURE                          VAL R2
       15 CAPTURE                          UPVAL U1
       16 NEWCLOSURE                       R6 P3
       17 CAPTURE                          VAL R2
       18 CAPTURE                          UPVAL U1
       19 NEWCLOSURE                       R7 P4
       20 CAPTURE                          VAL R2
       21 CAPTURE                          UPVAL U1
       22 NEWCLOSURE                       R8 P5
       23 CAPTURE                          VAL R2
       24 NEWCLOSURE                       R9 P6
       25 CAPTURE                          UPVAL U1
       26 CAPTURE                          VAL R1
       27 NEWCLOSURE                       R10 P7
       28 CAPTURE                          UPVAL U1
       29 CAPTURE                          VAL R1
       30 DUPTABLE                         R11 K13 [{"keypoints", "selectedIndex", "reset", "update", "add", "remove", "select", "save", "isFixedKeypointSelected", "getSelectedKeypoint"}]
       31 GETTABLEKS                       R12 R1 K0 ["Keypoints"]
       33 SETTABLEKS                       R12 R11 K3 ["keypoints"]
       35 GETTABLEKS                       R12 R1 K1 ["Selected"]
       37 SETTABLEKS                       R12 R11 K4 ["selectedIndex"]
       39 SETTABLEKS                       R3 R11 K5 ["reset"]
       41 SETTABLEKS                       R4 R11 K6 ["update"]
       43 SETTABLEKS                       R5 R11 K7 ["add"]
       45 SETTABLEKS                       R6 R11 K8 ["remove"]
       47 SETTABLEKS                       R7 R11 K9 ["select"]
       49 SETTABLEKS                       R8 R11 K10 ["save"]
       51 SETTABLEKS                       R9 R11 K11 ["isFixedKeypointSelected"]
       53 SETTABLEKS                       R10 R11 K12 ["getSelectedKeypoint"]
       55 RETURN                           R11 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETTABLEKS                       R2 R0 K5 ["Packages"]
       15 GETTABLEKS                       R2 R2 K6 ["React"]
       17 CALL                             R1 1 1
       18 GETTABLEKS                       R2 R1 K7 ["useState"]
       20 GETIMPORT                        R3 K4 [require]
       22 GETTABLEKS                       R4 R0 K8 ["Src"]
       24 GETTABLEKS                       R4 R4 K9 ["Renderers"]
       26 GETTABLEKS                       R4 R4 K10 ["SequenceRenderers"]
       28 GETTABLEKS                       R4 R4 K11 ["KeypointSequence"]
       30 CALL                             R3 1 1
       31 GETIMPORT                        R4 K4 [require]
       33 GETTABLEKS                       R5 R0 K8 ["Src"]
       35 GETTABLEKS                       R5 R5 K9 ["Renderers"]
       37 GETTABLEKS                       R5 R5 K10 ["SequenceRenderers"]
       39 GETTABLEKS                       R5 R5 K12 ["Types"]
       41 CALL                             R4 1 1
       42 DUPCLOSURE                       R5 K13 [PROTO_13]
       43 CAPTURE                          VAL R2
       44 CAPTURE                          VAL R3
       45 RETURN                           R5 1
