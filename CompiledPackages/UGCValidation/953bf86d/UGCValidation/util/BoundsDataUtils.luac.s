PROTO_0:
        0 NEWTABLE                         R2 4 0
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R4 R0 K0 ["minMeshCorner"]
        5 GETTABLEKS                       R5 R0 K1 ["maxMeshCorner"]
        7 GETTABLEKS                       R6 R1 K0 ["minMeshCorner"]
        9 GETTABLEKS                       R7 R1 K1 ["maxMeshCorner"]
       11 CALL                             R3 4 2
       12 SETTABLEKS                       R3 R2 K0 ["minMeshCorner"]
       14 SETTABLEKS                       R4 R2 K1 ["maxMeshCorner"]
       16 GETUPVAL                         R3 0
       17 GETTABLEKS                       R4 R0 K2 ["minRigAttachment"]
       19 GETTABLEKS                       R5 R0 K3 ["maxRigAttachment"]
       21 GETTABLEKS                       R6 R1 K2 ["minRigAttachment"]
       23 GETTABLEKS                       R7 R1 K3 ["maxRigAttachment"]
       25 CALL                             R3 4 2
       26 SETTABLEKS                       R3 R2 K2 ["minRigAttachment"]
       28 SETTABLEKS                       R4 R2 K3 ["maxRigAttachment"]
       30 GETUPVAL                         R4 1
       31 GETTABLEKS                       R3 R4 K4 ["setOverallBounds"]
       33 MOVE                             R4 R2
       34 CALL                             R3 1 0
       35 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R3 R0 K0 ["minMeshCorner"]
        3 GETTABLEKS                       R4 R0 K1 ["maxMeshCorner"]
        5 MOVE                             R5 R1
        6 MOVE                             R6 R1
        7 CALL                             R2 4 2
        8 SETTABLEKS                       R2 R0 K0 ["minMeshCorner"]
       10 SETTABLEKS                       R3 R0 K1 ["maxMeshCorner"]
       12 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R3 R0 K0 ["minRigAttachment"]
        3 GETTABLEKS                       R4 R0 K1 ["maxRigAttachment"]
        5 MOVE                             R5 R1
        6 MOVE                             R6 R1
        7 CALL                             R2 4 2
        8 SETTABLEKS                       R2 R0 K0 ["minRigAttachment"]
       10 SETTABLEKS                       R3 R0 K1 ["maxRigAttachment"]
       12 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["minMeshCorner"]
        3 GETTABLEKS                       R3 R0 K1 ["maxMeshCorner"]
        5 GETTABLEKS                       R4 R0 K2 ["minRigAttachment"]
        7 GETTABLEKS                       R5 R0 K3 ["maxRigAttachment"]
        9 CALL                             R1 4 2
       10 SETTABLEKS                       R1 R0 K4 ["minOverall"]
       12 SETTABLEKS                       R2 R0 K5 ["maxOverall"]
       14 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R2 R0 K0 ["minMeshCorner"]
        2 JUMPIFNOT                        R2 ; [+10]
        3 GETTABLEKS                       R2 R0 K1 ["maxMeshCorner"]
        5 JUMPIFNOT                        R2 ; [+7]
        6 GETTABLEKS                       R3 R0 K0 ["minMeshCorner"]
        8 GETTABLEKS                       R4 R0 K1 ["maxMeshCorner"]
       10 ADD                              R2 R3 R4
       11 DIVK                             R1 R2 K2 [2]
       12 JUMP                             ; [+1]
       13 LOADNIL                          R1
       14 GETTABLEKS                       R3 R0 K3 ["minRigAttachment"]
       16 JUMPIFNOT                        R3 ; [+10]
       17 GETTABLEKS                       R3 R0 K4 ["maxRigAttachment"]
       19 JUMPIFNOT                        R3 ; [+7]
       20 GETTABLEKS                       R4 R0 K3 ["minRigAttachment"]
       22 GETTABLEKS                       R5 R0 K4 ["maxRigAttachment"]
       24 ADD                              R3 R4 R5
       25 DIVK                             R2 R3 K2 [2]
       26 JUMP                             ; [+1]
       27 LOADNIL                          R2
       28 GETTABLEKS                       R4 R0 K5 ["minOverall"]
       30 JUMPIFNOT                        R4 ; [+10]
       31 GETTABLEKS                       R4 R0 K6 ["maxOverall"]
       33 JUMPIFNOT                        R4 ; [+7]
       34 GETTABLEKS                       R5 R0 K5 ["minOverall"]
       36 GETTABLEKS                       R6 R0 K6 ["maxOverall"]
       38 ADD                              R4 R5 R6
       39 DIVK                             R3 R4 K2 [2]
       40 RETURN                           R1 3
       41 LOADNIL                          R3
       42 RETURN                           R1 3

PROTO_5:
        0 GETTABLEKS                       R2 R0 K0 ["minMeshCorner"]
        2 JUMPIFNOT                        R2 ; [+9]
        3 GETTABLEKS                       R2 R0 K1 ["maxMeshCorner"]
        5 JUMPIFNOT                        R2 ; [+6]
        6 GETTABLEKS                       R2 R0 K1 ["maxMeshCorner"]
        8 GETTABLEKS                       R3 R0 K0 ["minMeshCorner"]
       10 SUB                              R1 R2 R3
       11 JUMP                             ; [+1]
       12 LOADNIL                          R1
       13 GETTABLEKS                       R3 R0 K2 ["minRigAttachment"]
       15 JUMPIFNOT                        R3 ; [+9]
       16 GETTABLEKS                       R3 R0 K3 ["maxRigAttachment"]
       18 JUMPIFNOT                        R3 ; [+6]
       19 GETTABLEKS                       R3 R0 K3 ["maxRigAttachment"]
       21 GETTABLEKS                       R4 R0 K2 ["minRigAttachment"]
       23 SUB                              R2 R3 R4
       24 JUMP                             ; [+1]
       25 LOADNIL                          R2
       26 GETTABLEKS                       R4 R0 K4 ["minOverall"]
       28 JUMPIFNOT                        R4 ; [+9]
       29 GETTABLEKS                       R4 R0 K5 ["maxOverall"]
       31 JUMPIFNOT                        R4 ; [+6]
       32 GETTABLEKS                       R4 R0 K5 ["maxOverall"]
       34 GETTABLEKS                       R5 R0 K4 ["minOverall"]
       36 SUB                              R3 R4 R5
       37 RETURN                           R1 3
       38 LOADNIL                          R3
       39 RETURN                           R1 3

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R2 K1 [script]
        3 GETTABLEKS                       R1 R2 K2 ["Parent"]
        5 GETTABLEKS                       R0 R1 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R3 R0 K5 ["util"]
       11 GETTABLEKS                       R2 R3 K6 ["Types"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K4 [require]
       16 GETTABLEKS                       R4 R0 K5 ["util"]
       18 GETTABLEKS                       R3 R4 K7 ["calculateMinMax"]
       20 CALL                             R2 1 1
       21 NEWTABLE                         R3 8 0
       23 DUPCLOSURE                       R4 K8 [PROTO_0]
       24 CAPTURE                          VAL R2
       25 CAPTURE                          VAL R3
       26 SETTABLEKS                       R4 R3 K9 ["combineBounds"]
       28 DUPCLOSURE                       R4 K10 [PROTO_1]
       29 CAPTURE                          VAL R2
       30 SETTABLEKS                       R4 R3 K11 ["expandMeshBounds"]
       32 DUPCLOSURE                       R4 K12 [PROTO_2]
       33 CAPTURE                          VAL R2
       34 SETTABLEKS                       R4 R3 K13 ["expandRigAttachmentBounds"]
       36 DUPCLOSURE                       R4 K14 [PROTO_3]
       37 CAPTURE                          VAL R2
       38 SETTABLEKS                       R4 R3 K15 ["setOverallBounds"]
       40 DUPCLOSURE                       R4 K16 [PROTO_4]
       41 SETTABLEKS                       R4 R3 K17 ["calculateBoundsCenters"]
       43 DUPCLOSURE                       R4 K18 [PROTO_5]
       44 SETTABLEKS                       R4 R3 K19 ["calculateBoundsDimensions"]
       46 RETURN                           R3 1
