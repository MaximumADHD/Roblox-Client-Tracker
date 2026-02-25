PROTO_0:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["applyTposeAdjustment"]
        3 MOVE                             R3 R1
        4 MOVE                             R4 R0
        5 CALL                             R2 2 0
        6 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["autoMap"]
        3 MOVE                             R3 R1
        4 MOVE                             R4 R0
        5 CALL                             R2 2 0
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R2 R3 K1 ["enforceTpose"]
        9 MOVE                             R3 R1
       10 MOVE                             R4 R0
       11 CALL                             R2 2 0
       12 GETUPVAL                         R3 0
       13 GETTABLEKS                       R2 R3 K2 ["sampleTposeAdjustment"]
       15 MOVE                             R3 R1
       16 MOVE                             R4 R0
       17 CALL                             R2 2 0
       18 GETUPVAL                         R3 1
       19 GETTABLEKS                       R2 R3 K3 ["SIZE_ENABLED"]
       21 JUMPIFNOT                        R2 ; [+7]
       22 JUMPIFNOT                        R0 ; [+6]
       23 GETUPVAL                         R3 0
       24 GETTABLEKS                       R2 R3 K4 ["autoSize"]
       26 MOVE                             R3 R1
       27 MOVE                             R4 R0
       28 CALL                             R2 2 0
       29 GETUPVAL                         R3 2
       30 GETTABLEKS                       R2 R3 K5 ["addTPoseWaypoint"]
       32 LOADK                            R3 K6 ["Auto All"]
       33 CALL                             R2 1 0
       34 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["clearTposeAdjustment"]
        3 MOVE                             R3 R1
        4 MOVE                             R4 R0
        5 CALL                             R2 2 0
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R2 R3 K1 ["clearMapping"]
        9 MOVE                             R3 R1
       10 MOVE                             R4 R0
       11 CALL                             R2 2 0
       12 GETUPVAL                         R3 0
       13 GETTABLEKS                       R2 R3 K2 ["clearSize"]
       15 MOVE                             R3 R1
       16 MOVE                             R4 R0
       17 CALL                             R2 2 0
       18 GETUPVAL                         R3 1
       19 GETTABLEKS                       R2 R3 K3 ["addTPoseWaypoint"]
       21 LOADK                            R3 K4 ["Reset All"]
       22 CALL                             R2 1 0
       23 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AdaptiveAnimationSupport"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["AdaptiveAnimationTools"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R5 R0 K8 ["Src"]
       18 GETTABLEKS                       R4 R5 K9 ["Utils"]
       20 GETTABLEKS                       R3 R4 K10 ["UndoUtils"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R6 R0 K8 ["Src"]
       27 GETTABLEKS                       R5 R6 K11 ["Resources"]
       29 GETTABLEKS                       R4 R5 K12 ["Constants"]
       31 CALL                             R3 1 1
       32 NEWTABLE                         R4 4 0
       34 DUPCLOSURE                       R5 K13 [PROTO_0]
       35 CAPTURE                          VAL R1
       36 SETTABLEKS                       R5 R4 K14 ["restorePreviewPose"]
       38 DUPCLOSURE                       R5 K15 [PROTO_1]
       39 CAPTURE                          VAL R1
       40 CAPTURE                          VAL R3
       41 CAPTURE                          VAL R2
       42 SETTABLEKS                       R5 R4 K16 ["autoAll"]
       44 DUPCLOSURE                       R5 K17 [PROTO_2]
       45 CAPTURE                          VAL R1
       46 CAPTURE                          VAL R2
       47 SETTABLEKS                       R5 R4 K18 ["resetAll"]
       49 RETURN                           R4 1
