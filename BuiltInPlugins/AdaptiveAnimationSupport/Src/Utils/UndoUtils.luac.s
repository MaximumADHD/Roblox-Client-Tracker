PROTO_0:
        0 LOADK                            R2 K0 ["AdaptiveAnimationSupport_"]
        1 MOVE                             R3 R0
        2 CONCAT                           R1 R2 R3
        3 GETUPVAL                         R2 0
        4 MOVE                             R4 R1
        5 NAMECALL                         R2 R2 K1 ["SetWaypoint"]
        7 CALL                             R2 2 0
        8 RETURN                           R0 0

PROTO_1:
        0 GETIMPORT                        R2 K2 [string.format]
        2 LOADK                            R3 K3 ["Map %s to %s"]
        3 MOVE                             R4 R0
        4 MOVE                             R5 R1
        5 CALL                             R2 3 1
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R3 R4 K4 ["addWaypoint"]
        9 MOVE                             R4 R2
       10 CALL                             R3 1 0
       11 RETURN                           R0 0

PROTO_2:
        0 GETIMPORT                        R2 K2 [string.format]
        2 LOADK                            R3 K3 ["%s %s"]
        3 MOVE                             R4 R1
        4 MOVE                             R5 R0
        5 CALL                             R2 3 1
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R3 R4 K4 ["addWaypoint"]
        9 MOVE                             R4 R2
       10 CALL                             R3 1 0
       11 RETURN                           R0 0

PROTO_3:
        0 GETIMPORT                        R1 K2 [string.format]
        2 LOADK                            R2 K3 ["T-pose %s"]
        3 MOVE                             R3 R0
        4 CALL                             R1 2 1
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R2 R3 K4 ["addWaypoint"]
        8 MOVE                             R3 R1
        9 CALL                             R2 1 0
       10 RETURN                           R0 0

PROTO_4:
        0 GETIMPORT                        R2 K2 [string.format]
        2 LOADK                            R3 K3 ["Size %s %s"]
        3 ORK                              R4 R1 K4 ["common"]
        4 ORK                              R5 R0 K5 ["all"]
        5 CALL                             R2 3 1
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R3 R4 K6 ["addWaypoint"]
        9 MOVE                             R4 R2
       10 CALL                             R3 1 0
       11 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 8 0
        3 GETIMPORT                        R1 K1 [game]
        5 LOADK                            R3 K2 ["ChangeHistoryService"]
        6 NAMECALL                         R1 R1 K3 ["GetService"]
        8 CALL                             R1 2 1
        9 DUPCLOSURE                       R2 K4 [PROTO_0]
       10 CAPTURE                          VAL R1
       11 SETTABLEKS                       R2 R0 K5 ["addWaypoint"]
       13 DUPCLOSURE                       R2 K6 [PROTO_1]
       14 CAPTURE                          VAL R0
       15 SETTABLEKS                       R2 R0 K7 ["addBoneMappingWaypoint"]
       17 DUPCLOSURE                       R2 K8 [PROTO_2]
       18 CAPTURE                          VAL R0
       19 SETTABLEKS                       R2 R0 K9 ["addTransformWaypoint"]
       21 DUPCLOSURE                       R2 K10 [PROTO_3]
       22 CAPTURE                          VAL R0
       23 SETTABLEKS                       R2 R0 K11 ["addTPoseWaypoint"]
       25 DUPCLOSURE                       R2 K12 [PROTO_4]
       26 CAPTURE                          VAL R0
       27 SETTABLEKS                       R2 R0 K13 ["addSizeWaypoint"]
       29 RETURN                           R0 1
