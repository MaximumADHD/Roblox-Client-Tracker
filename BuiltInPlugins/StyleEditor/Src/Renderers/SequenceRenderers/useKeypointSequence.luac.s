PROTO_0:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R2 K3 [{[1], ["Selected"] = 1}]
        2 SETTABLEKS                       R0 R2 K0 ["Keypoints"]
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

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
        1 DUPTABLE                         R2 K3 [{[1], ["Selected"] = 1}]
        2 SETTABLEKS                       R0 R2 K0 ["Keypoints"]
        4 CALL                             R1 1 2
        5 NEWCLOSURE                       R3 P0
        6 CAPTURE                          VAL R2
        7 NEWCLOSURE                       R4 P1
        8 CAPTURE                          VAL R2
        9 CAPTURE                          UPVAL U1
       10 NEWCLOSURE                       R5 P2
       11 CAPTURE                          VAL R2
       12 CAPTURE                          UPVAL U1
       13 NEWCLOSURE                       R6 P3
       14 CAPTURE                          VAL R2
       15 CAPTURE                          UPVAL U1
       16 NEWCLOSURE                       R7 P4
       17 CAPTURE                          VAL R2
       18 CAPTURE                          UPVAL U1
       19 NEWCLOSURE                       R8 P5
       20 CAPTURE                          VAL R2
       21 NEWCLOSURE                       R9 P6
       22 CAPTURE                          UPVAL U1
       23 CAPTURE                          VAL R1
       24 NEWCLOSURE                       R10 P7
       25 CAPTURE                          UPVAL U1
       26 CAPTURE                          VAL R1
       27 DUPTABLE                         R11 K14 [{"keypoints", "selectedIndex", "reset", "update", "add", "remove", "select", "save", "isFixedKeypointSelected", "getSelectedKeypoint"}]
       28 GETTABLEKS                       R12 R1 K0 ["Keypoints"]
       30 SETTABLEKS                       R12 R11 K4 ["keypoints"]
       32 GETTABLEKS                       R12 R1 K1 ["Selected"]
       34 SETTABLEKS                       R12 R11 K5 ["selectedIndex"]
       36 SETTABLEKS                       R3 R11 K6 ["reset"]
       38 SETTABLEKS                       R4 R11 K7 ["update"]
       40 SETTABLEKS                       R5 R11 K8 ["add"]
       42 SETTABLEKS                       R6 R11 K9 ["remove"]
       44 SETTABLEKS                       R7 R11 K10 ["select"]
       46 SETTABLEKS                       R8 R11 K11 ["save"]
       48 SETTABLEKS                       R9 R11 K12 ["isFixedKeypointSelected"]
       50 SETTABLEKS                       R10 R11 K13 ["getSelectedKeypoint"]
       52 RETURN                           R11 1

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
